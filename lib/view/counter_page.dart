import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/bloc/counter_event.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador',
          style: TextStyle(fontSize: 36, fontWeight: .w700),
        ),
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
            onPressed: () =>
                context.read<CounterBloc>().add(CounterIncremented()),
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterDecremented()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
