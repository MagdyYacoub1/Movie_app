import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/app_router.dart';
import 'package:movies_app/business_logic/bloc_observer.dart';
import 'package:movies_app/theme.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}

///The route widget of the app
class MyApp extends StatefulWidget {
  ///Construct and attch as a root widget to the widget tree
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      onGenerateRoute: _router.generateRoute,
    );
  }
}
