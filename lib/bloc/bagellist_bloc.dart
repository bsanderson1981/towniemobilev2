import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bagellist_event.dart';
part 'bagellist_state.dart';

class BagellistBloc extends Bloc<BagellistEvent, BagellistState> {
  BagellistBloc() : super(BagellistInitial());

  @override
  Stream<BagellistState> mapEventToState(
    BagellistEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
