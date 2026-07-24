import 'package:bloc_app/view/cubit_counter_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc_app/view/bloc_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => const CounterBlocPage(),
        '/another': (_) => const CounterCubicPage(),
      },
    );
  }
}
