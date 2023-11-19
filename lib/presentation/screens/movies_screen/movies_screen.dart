import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../constants/colors.dart';
import 'components/discover_layout.dart';

/// Shows all characters
class MoviesScreen extends StatelessWidget {
  /// Character Screen
  const MoviesScreen({super.key});

  void refresh(BuildContext context) {
    context.read<MovieBloc>().add(const Fetch());
  }

  void search(BuildContext context, String query) {
    context.read<MovieBloc>().query = query;
    if (query != '') {
      context.read<MovieBloc>().add(const Search());
    } else {
      context.read<MovieBloc>().add(const Fetch());
    }
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final size = MediaQuery.of(context).size;
    final currentHorizontalPadding = size.width * 0.05;
    const minHorizontalPadding = 20.0;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: max(minHorizontalPadding, currentHorizontalPadding),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            BlocBuilder<MovieBloc, MovieState>(
              builder: (context, state) {
                return state.maybeWhen(
                  movieLoadInProgress: () => const Center(
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  movieFetched: (movies) => DiscoverLayout(
                    movies: movies,
                  ),
                  movieSearchFetched: (movies) => DiscoverLayout(
                    movies: movies,
                  ),
                  movieEndOfList: (movies) => DiscoverLayout(
                    movies: movies,
                    endOfList: true,
                  ),
                  movieFetchMoreInProgress: (movies) => DiscoverLayout(
                    movies: movies,
                  ),
                  movieFaild: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          message,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () => refresh(context),
                          child: const Text('Refresh'),
                        ),
                      ],
                    ),
                  ),
                  orElse: () => const Center(
                    child: Text(
                      'error',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: topPadding,
              height: 50,
              left: 20,
              right: 20,
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                  ),
                ),
                onSubmitted: (value) => search(context, value),
                onChanged: (value) {
                  if (value == '') search(context, value);
                },
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
