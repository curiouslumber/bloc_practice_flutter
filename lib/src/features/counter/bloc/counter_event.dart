part of 'counter_bloc.dart';

// Base Event
sealed class CounterEvent {}

// Increment Event
class CounterIncrementEvent extends CounterEvent {}

// Decrement Event
class CounterDecrementEvent extends CounterEvent {}
