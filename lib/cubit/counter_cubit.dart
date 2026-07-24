import 'package:bloc_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterStateInitial());

  void increment() {
    emit(CounterStateChange(state.count + 1));
  }

  void decrement() {
    if (state.count >= 1) emit(CounterStateChange(state.count - 1));
  }
}
