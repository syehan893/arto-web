part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginUpdateRequest extends LoginEvent {
  final LoginRequest request;
  const LoginUpdateRequest({
    required this.request,
  });

  @override
  List<Object?> get props => [
        ...super.props,
      ];
}

class LoginUpdatePasswordVisibility extends LoginEvent {
  final bool isObscuredText;
  const LoginUpdatePasswordVisibility({
    required this.isObscuredText,
  });
  @override
  List<Object?> get props => [...super.props, isObscuredText];
}

class LoginSubmit extends LoginEvent {}

class LoginInvalidate extends LoginEvent {}
