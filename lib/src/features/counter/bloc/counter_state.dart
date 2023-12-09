part of 'counter_bloc.dart';

class CounterState {
  final int counter;

  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);
}

class IncrementState extends CounterState {
  const IncrementState(int increasedValue) : super(counter: increasedValue);
}

class DecrementState extends CounterState {
  const DecrementState(int decrementValue) : super(counter: decrementValue);
}
