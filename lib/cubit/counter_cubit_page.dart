import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';
import 'counter_state.dart';

class CounterCubitPage extends StatefulWidget {
  // static const String routeName = '/counter_cubit';
  
  //@override
  //  bool get wantKeepAlive => true;  // not work
 // final bool keepAlive = true; // try to keep counter on skroll????

  @override
  _CounterCubitPageState createState() => _CounterCubitPageState();
}

class _CounterCubitPageState extends State<CounterCubitPage>  with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
    key: UniqueKey(),
        //appBar: AppBar(title: const Text('Counter Cubit Bloc Double CTest')),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
          key: UniqueKey(),
          builder: (context, state) => Column(
            children: [
              Row(
                key: UniqueKey(),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    color: Colors.blue,
                    iconSize: 25,
                    onPressed: () => context.read<CounterCubit>().increment(),
                  ),
                  Text(
                    '${state.totalbagels}', 
                    key: GlobalKey(), // not working 
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
            ],
          ),
        ),
      );

  @override
  bool get wantKeepAlive => true;
 
}
