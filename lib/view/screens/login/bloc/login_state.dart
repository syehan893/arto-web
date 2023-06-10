part of 'login_bloc.dart';

class LoginState extends Equatable {
  final bool obscurePassword;
  final bool isValidEmail;
  final bool isValidPassword;
  final LoginRequest? request;
  final BaseFailure? failure;
  const LoginState({
    this.obscurePassword = true,
    this.isValidEmail = false,
    this.isValidPassword = false,
    this.request,
    this.failure,
  });

  @override
  List<Object?> get props {
    return [
      obscurePassword,
      isValidEmail,
      isValidPassword,
      request,
      failure,
    ];
  }

  LoginState copyWith({
    bool? obscurePassword,
    bool? isValidEmail,
    bool? isValidPassword,
    LoginRequest? request,
    BaseFailure? failure,
  }) {
    return LoginState(
      obscurePassword: obscurePassword ?? this.obscurePassword,
      isValidEmail: isValidEmail ?? this.isValidEmail,
      isValidPassword: isValidPassword ?? this.isValidPassword,
      request: request ?? this.request,
      failure: failure ?? this.failure,
    );
  }
}

class LoginLoadingState extends LoginState {
  final LoginState newState;
  LoginLoadingState({
    required this.newState,
  }) : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}

class LoginSuccessState extends LoginState {
  final LoginState newState;
  LoginSuccessState({
    required this.newState,
  }) : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}

class LoginFailedState extends LoginState {
  final LoginState newState;
  LoginFailedState({
    required this.newState,
  }) : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}

class LoginCreatingFirebaseUser extends LoginState {
  final LoginState newState;
  LoginCreatingFirebaseUser({
    required this.newState,
  }) : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}

class LoginCreateFirebaseUserFailed extends LoginState {
  LoginCreateFirebaseUserFailed({required LoginState newState})
      : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}

class LoginCreateFirebaseUserSuccess extends LoginState {
  LoginCreateFirebaseUserSuccess({required LoginState newState})
      : super(
          isValidEmail: newState.isValidEmail,
          isValidPassword: newState.isValidPassword,
          obscurePassword: newState.obscurePassword,
          request: newState.request,
          failure: newState.failure,
        );
}
