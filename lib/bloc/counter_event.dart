part of 'counter_bloc.dart';

sealed class CounterEvent {}

/// Event which will be passed to Bloc.
/// because Bloc takes event and state as i/p argument.
///
class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}
