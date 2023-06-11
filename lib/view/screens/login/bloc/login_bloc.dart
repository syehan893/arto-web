import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/common/constants/validator.dart';
import 'package:ta_smt4/common/failures/base_failures.dart';
import 'package:ta_smt4/models/request/login_request.dart';
import 'package:ta_smt4/models/token.dart';
import 'package:ta_smt4/repositories/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FlutterSecureStorage secureStorage;
  final AuthenticationRepository authenticationRepository;
  LoginBloc(
    this.secureStorage,
    this.authenticationRepository,
  ) : super(const LoginState(
          //todo: remove soon after doctor app settle
          request: LoginRequest(
            email: '',
            password: '',
            phone: '',
          ),
          isValidEmail: true,
          isValidPassword: true,
        )) {
    on<LoginUpdateRequest>(_updateRequest);
    on<LoginSubmit>(_submit);
  }

  void _updateRequest(LoginUpdateRequest event, emit) {
    final isValidPassword = !Validator.isEmpty(value: event.request.password);
    final isValidEmail = Validator.isEmailFormatValid(
      value: event.request.email,
      enableTestEmail: true,
    );
    emit(state.copyWith(
      isValidEmail: isValidEmail,
      isValidPassword: isValidPassword,
      request: event.request,
    ));
  }

  void _submit(LoginSubmit event, emit) async {
    emit(LoginLoadingState(newState: state));
    final result = await authenticationRepository.login(state.request!);
    await result.fold(
        (l) => emit(LoginFailedState(newState: state.copyWith(failure: l))),
        (r) async {
      _setLocalUserInfo(r);
      return emit(LoginSuccessState(newState: state));
    });
  }

  void _setLocalUserInfo(Token token) async {
    await secureStorage.write(
      key: CommonStorageKeys.token,
      value: token.toJson(),
    );
    await secureStorage.write(
      key: CommonStorageKeys.email,
      value: state.request?.email,
    );
  }
}
