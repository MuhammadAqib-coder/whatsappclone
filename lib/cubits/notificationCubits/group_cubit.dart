import 'package:flutter_bloc/flutter_bloc.dart';

class GroupCubit extends Cubit<bool> {
  GroupCubit() : super(true);

  changeState(value) {
    emit(value);
  }
}
