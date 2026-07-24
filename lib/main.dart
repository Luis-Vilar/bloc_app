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
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (_) => CounterBloc()),
        BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
      ],
      child: MaterialApp(
        routes: {
          '/': (_) => const CounterBlocPage(),
          '/another': (_) => const CounterCubicPage(),
        },
      ),
    );
  }
}
