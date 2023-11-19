import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/constants/colors.dart';
import 'package:movies_app/presentation/screens/movies_screen/components/movie_card.dart';

import '../../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../../data/models/movie.dart';

class DiscoverLayout extends StatefulWidget {
  const DiscoverLayout({
    super.key,
    required this.movies,
    this.endOfList = false,
  });

  final List<Movie> movies;
  final bool endOfList;

  @override
  State<DiscoverLayout> createState() => _DiscoverLayoutState();
}

class _DiscoverLayoutState extends State<DiscoverLayout> {
  late ScrollController scrollController;
  final GlobalKey scrollViewKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    /// This process prevents the stuck state
    /// when the gridview is not scrollable
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        if (scrollController.position.maxScrollExtent == 0.0) {
          fetchDataByStateType();
        }
      },
    );
    scrollController.addListener(
      () {
        if (scrollController.position.maxScrollExtent -
                scrollController.offset ==
            0) {
          fetchDataByStateType();
        }
      },
    );
  }

  void fetchDataByStateType() {
    context.read<MovieBloc>().state.mapOrNull(
          movieFetched: (movies) => context.read<MovieBloc>().add(
                const FetchMore(),
              ),
          movieSearchFetched: (movies) => context.read<MovieBloc>().add(
                const SearchMore(),
              ),
          movieEndOfList: (value) => {},
        );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const aspectRatio = 0.55;
    final topPadding = MediaQuery.of(context).padding.top;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final currentCount = (MediaQuery.of(context).size.width ~/ 170).toInt();
    const minCount = 3;
    return GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: AppColors.primaryColor,
      child: GridView.builder(
        key: scrollViewKey,
        controller: scrollController,
        padding:
            EdgeInsets.only(top: topPadding + 55 + 5, bottom: bottomPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: max(currentCount, minCount),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: aspectRatio,
        ),
        itemCount: widget.movies.length + 1,
        itemBuilder: (context, index) {
          return index < widget.movies.length
              ? MovieCard(movie: widget.movies[index])
              : context.read<MovieBloc>().state.maybeWhen(
                    orElse: () => const SizedBox(),
                    movieFetchMoreInProgress: (value) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.secondaryColor,
                          ),
                        ),
                      ),
                    ),
                    movieEndOfList: (movies) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: Text(
                          'End of list',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
        },
      ),
    );
  }
}
