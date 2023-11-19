import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/business_logic/bloc/movie/movie_bloc.dart';
import 'package:movies_app/business_logic/cubit/home_tab_index_cubit.dart';
import 'package:movies_app/constants/stings.dart';
import 'package:movies_app/presentation/screens/movie_details_screen/movie_details_screen.dart';

import 'presentation/screens/home_screen/home_screen.dart';

///Used to manage routes in the app
class AppRouter {
  final _movieBloc = MovieBloc();

  ///Used to generate routs
  Route<MaterialPageRoute<void>> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ConstantStrings.homeScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: _movieBloc..add(const Fetch()),
              ),
              BlocProvider(
                create: (context) => HomeTabIndexCubit(),
              ),
            ],
            child: const HomeScreen(),
          ),
        );
      case ConstantStrings.movieDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _movieBloc,
            child: const MovieDetailsScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _movieBloc,
            child: const HomeScreen(),
          ),
        );
    }
  }

  void dispose() {
    _movieBloc.close();
  }
}
