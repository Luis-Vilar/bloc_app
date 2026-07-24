import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/bloc/counter_event.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Counter',
          style: TextStyle(fontSize: 36, fontWeight: .w700),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.popAndPushNamed(context, '/another'),
            icon: Icon(Icons.navigate_next),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Text(
              count.toString(),
              style: const TextStyle(fontSize: 48.0, fontWeight: .w700),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'fab-increment',
            onPressed: () =>
                context.read<CounterBloc>().add(CounterIncremented()),
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'fab-decrement',
            onPressed: () =>
                context.read<CounterBloc>().add(CounterDecremented()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
