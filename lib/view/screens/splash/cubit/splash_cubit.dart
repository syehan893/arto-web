import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/common/helpers/util.dart';

part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final FlutterSecureStorage secureStorage;
  SplashCubit(this.secureStorage) : super(SplashInitial());

  void checkTokenAvailability() async {
    final token = await secureStorage.read(key: CommonStorageKeys.token);
    emit(SplashRetrievingToken());
    if (!Util.falsyChecker(token)) {
      emit(SplashSuccessRetrievingToken());
    } else {
      emit(SplashFailedRetrievingToken());
    }
  }
}
