import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/cubit/increment_decrement_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // // holds the initial state of the app.
    // final counter = counterCubit.state;

    /* 
     using bloc provider we can access same instance of a class for our whole app
     now we don't need to create instance of a class each time we want to use or so. 
    */
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc ,int>(
                builder: (context, value) {
                  return Text(
                    '$value',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const IncDecPage()));
        },
        icon: const Icon(Icons.abc),
      ),
    );
  }
}
