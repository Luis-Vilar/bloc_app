import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:bloc_app/view/cubit_counter_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc_app/view/bloc_counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => CounterBloc(),
          child: CounterBlocPage(),
        ),
        '/another': (context) => BlocProvider(
          create: (context) => CounterCubit(),
          child: CounterCubicPage(),
        ),
      },
    );
  }
}
