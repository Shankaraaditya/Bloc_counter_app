import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* 
     using bloc provider we can access same instance of a class for our whole app
     now we don't need to create instance of a class each time we want to use or so. 
    */
    final counterCubit = BlocProvider.of<CounterCubit>(context);

    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              // Notifies the [Bloc] of a new [event] which triggers all corresponding [EventHandler] instances.
              counterBloc.add(CounterIncremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              counterCubit.decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
