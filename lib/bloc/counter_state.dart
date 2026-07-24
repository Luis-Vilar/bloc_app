abstract class CounterState {
  final int count;

  const CounterState({required this.count});
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(count: 0);
}

class CounterChangeState extends CounterState {
  const CounterChangeState({required super.count});
}
