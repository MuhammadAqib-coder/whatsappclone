import 'package:flutter_bloc/flutter_bloc.dart';

class PreviewCubit extends Cubit<bool> {
  PreviewCubit() : super(true);

  changeState(value) {
    emit(value);
  }
}
