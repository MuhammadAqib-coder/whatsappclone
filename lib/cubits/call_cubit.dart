import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/callScreen/calls_screen.dart';

class CallCubit extends Cubit<Calls> {
  CallCubit() : super(Calls.allCalls);

  changeCallSegment(value) {
    emit(value);
  }
}
