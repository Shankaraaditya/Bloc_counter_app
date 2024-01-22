import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  /*
  zero argument constructor.
  this constructor passes an initial state to the Cubit class 
  */
  CounterCubit() : super(0);

/* 
 When this method is called, it increments the current state by 1 and then emits the new state using the emit method. The emit method is provided by the Cubit class and is used to notify the listeners about the new state.

 emit - update the state of this class to provided state. i.e (state+1) 
*/
  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
