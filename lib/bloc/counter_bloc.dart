import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState()) {
    on<CounterIncrementedEvent>((event, emit) {
      emit(CounterChangeState(count: state.count + 1));
    });

    on<CounterDecrementedEvent>((event, emit) {
      if (state.count > 0) {
        emit(CounterChangeState(count: state.count - 1));
      }
    });
  }
}
