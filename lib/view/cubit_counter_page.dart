import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubicPage extends StatelessWidget {
  const CounterCubicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cubic Counter',
          style: TextStyle(fontSize: 36, fontWeight: .w700),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.popAndPushNamed(context, '/'),
            icon: const Icon(Icons.navigate_before),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          bloc: cubit,
          builder: (context, state) {
            return Text(
              '$state',
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
            onPressed: cubit.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'fab-decrement',
            onPressed: cubit.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
