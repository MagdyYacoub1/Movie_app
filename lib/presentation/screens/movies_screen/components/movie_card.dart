import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/constants/colors.dart';

import '../../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../../constants/stings.dart';
import '../../../../data/models/movie.dart';
import '../../../widgets/custom_cached_image.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: movie.id,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        shadowColor: AppColors.darkerBgColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: () {
            context.read<MovieBloc>().currentlySelectedMovie = movie;
            Navigator.of(context).pushNamed(ConstantStrings.movieDetailsScreen);
          },
          child: CustomCachedImage(
            imageUrl: ConstantStrings.imageBaseUrl +
                ConstantStrings.posetrSizes[1] +
                (movie.posterPath),
            height: 15,
          ),
        ),
      ),
    );
  }
}
