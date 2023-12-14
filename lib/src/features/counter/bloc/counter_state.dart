part of 'counter_bloc.dart';

// Base class for Counter State
class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

// Initial State
class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);
}

// Increment State
class IncrementState extends CounterState {
  const IncrementState(int increasedValue) : super(counter: increasedValue);
}

// Decrement State
class DecrementState extends CounterState {
  const DecrementState(int decrementValue) : super(counter: decrementValue);
}
