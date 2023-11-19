import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/stings.dart';
import '../../../widgets/custom_cached_image.dart';

class FlexibleAppBar extends StatelessWidget {
  const FlexibleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentPosterWidth = size.width * 0.1;
    const minPosterWidth = 150.0;
    final movie = context.read<MovieBloc>().currentlySelectedMovie;
    return FlexibleSpaceBar(
      centerTitle: true,
      expandedTitleScale: 1.2,
      title: Text(movie!.title, textAlign: TextAlign.center),
      background: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  AppColors.darkerBgColor.withOpacity(0.7),
                ],
              ),
            ),
            child: CustomCachedImage(
              imageUrl: ConstantStrings.imageBaseUrl +
                  ConstantStrings.backDropSizes[1] +
                  (movie.backdropPath),
              height: size.height * 0.4,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: max(minPosterWidth, currentPosterWidth),
                height: size.height * 0.26,
                child: Hero(
                  tag: movie.id,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: CustomCachedImage(
                      imageUrl: ConstantStrings.imageBaseUrl +
                          ConstantStrings.posetrSizes[1] +
                          (movie.posterPath),
                      height: size.height * 0.3,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
