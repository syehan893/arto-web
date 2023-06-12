import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UserRepository userRepository;
  final FlutterSecureStorage secureStorage;
  UserCubit(this.userRepository, this.secureStorage) : super(const UserState());

  void getUser() async {
    emit(UserLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    result.fold((l) => emit(UserFailure(state)),
        (r) => emit(UserLoaded(state.copyWith(user: r))));
  }
}
