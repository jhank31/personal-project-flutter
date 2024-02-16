part of 'counter_bloc_bloc.dart';

sealed class CounterBlocEvent {
  const CounterBlocEvent();
}

class CounterIncreased extends CounterBlocEvent {
  final int value;

  const CounterIncreased({required this.value});
}

class RestedValue extends CounterBlocEvent {}
