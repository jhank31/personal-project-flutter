part of 'counter_bloc_bloc.dart';

class CounterBlocState extends Equatable {
  final int counter;
  final int transactionCounter;
  const CounterBlocState({this.counter = 0, this.transactionCounter = 0});

  @override
  List<Object> get props => [counter, transactionCounter];

  copyWith({int? counter, int? transactionCounter}) => CounterBlocState(
      counter: counter ?? this.counter,
      transactionCounter: transactionCounter ?? this.transactionCounter);
}
