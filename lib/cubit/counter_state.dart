abstract class CounterState {
  final int count;
  CounterState({required this.count});
}

final class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(count: 0);
}

final class CounterStateChange extends CounterState {
  CounterStateChange(int count) : super(count: count);
}
