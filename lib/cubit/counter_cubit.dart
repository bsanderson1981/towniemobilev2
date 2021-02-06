import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int holdtotal = 0;
  int holdsingle = 0;

  CounterCubit()
      : super(CounterCubitInitial(dozcount: 0, singcount: 0, totalbagels: 0));

  void increment() {
    holdtotal = ((state.totalbagels + 1) ~/ 13);
    holdsingle = ((state.totalbagels + 1) % 13);
    print("+holdsingle: " + holdsingle.toStringAsFixed(2));
    print("+holdtotal: " + holdtotal.toStringAsFixed(2));

    emit(CounterCubitIncreased(
      totalbagels: (state.totalbagels + 1),
      // dozcount: ((state.totalbagels +1) ~/ 13),
      // singcount: ((state.totalbagels +1) % 13),

      // singcount: ((state.totalbagels +1) % 13),
    ));
  }

  void decrement() {
    if (state.totalbagels == 0) {
    } else {
      holdtotal = ((state.totalbagels - 1) ~/ 13);
      holdsingle = ((state.totalbagels - 1) % 13);
      print("-holdsingle: " + holdsingle.toStringAsFixed(2));
       print("-holdtotal: " + holdtotal.toStringAsFixed(2));
      emit(CounterCubitDecreased(
        totalbagels: (state.totalbagels - 1),
        // dozcount: ((state.totalbagels -1) ~/ 13),
        // singcount: ((state.totalbagels -1) % 13),
      ));
    }
  }
}
