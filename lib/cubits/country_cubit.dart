import 'package:flutter_bloc/flutter_bloc.dart';

class CountryCubit extends Cubit<String> {
  CountryCubit() : super('');

  changeCountry(value) {
    emit(value);
  }
}
