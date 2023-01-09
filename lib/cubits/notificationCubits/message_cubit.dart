import 'package:flutter_bloc/flutter_bloc.dart';

class MessageCubit extends Cubit<bool> {
  MessageCubit() : super(true);

  changeState(value) {
    emit(value);
  }
}
