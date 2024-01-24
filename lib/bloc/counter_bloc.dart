import 'package:flutter_bloc/flutter_bloc.dart';

/// Event which will be passed to Bloc.
/// because Bloc takes event and state as i/p argument.
class CounterIncremented {}

/// Takes a "Stream of Events" as input and transforms them into a "Stream of States" as output.
class CounterBloc extends Bloc<CounterIncremented, int> {
  //zero argument constructor
  CounterBloc() : super(0) {

    // Event Handler -> what happens when any event is triggered .
    // Register event handler for an event of type E. There should only ever be one event handler per event type E.
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });
  }
}
