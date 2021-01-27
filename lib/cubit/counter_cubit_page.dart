import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';
import 'counter_state.dart';



class CounterCubitPage extends StatelessWidget {
 // static const String routeName = '/counter_cubit';

  @override
  Widget build(BuildContext context) => Scaffold(
        //appBar: AppBar(title: const Text('Counter Cubit Bloc Double CTest')),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
          builder: (context, state) => Column(
                  children: [
                 
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        color: Colors.blue,
                        iconSize: 25,
                        onPressed: () => context.read<CounterCubit>().increment(),
                      ),
                   
                 
                  Text(
                    '${state.totalbagels}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle),
                    color: Colors.blue,
                    iconSize: 25,
                    onPressed: () => context.read<CounterCubit>().decrement(),
                  ),
                    ],
                 ),
                  

                 /* 
                  const SizedBox(height: 8),
                 

                  // add second windows of bagels
                  Divider(
                    height: 20,
                    thickness: 10,
                    color: Colors.black,
                  ),

                  Text(
                    'Bakers Dozen: ${state.dozcount}',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Singles: ${state.singcount}',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8), */
                  
                ],
              ),
        ),
      );
}
