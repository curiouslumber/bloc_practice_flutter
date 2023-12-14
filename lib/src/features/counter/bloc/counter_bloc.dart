import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // initialize bloc with initial state
  CounterBloc() : super(const CounterInitial()) {
    // increment counter when increment event received
    on<CounterIncrementEvent>((event, emit) {
      emit(IncrementState(state.counter + 1));
    });

    // decrement counter when decrement event received
    on<CounterDecrementEvent>((event, emit) {
      emit(DecrementState(state.counter - 1));
    });
  }

  @override
  void onChange(Change<CounterState> change) {
    super.onChange(change);
    // ignore: avoid_print
    print(change);
  }
}
