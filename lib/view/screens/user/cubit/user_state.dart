// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_cubit.dart';

class UserState extends Equatable {
  final User? user;
  const UserState({this.user});

  @override
  List<Object?> get props => [user];

  UserState copyWith({
    User? user,
  }) {
    return UserState(
      user: user ?? this.user,
    );
  }
}

class UserInitial extends UserState {
  final UserState newState;

  UserInitial(this.newState) : super(user: newState.user);
}

class UserLoading extends UserState {
  final UserState newState;

  UserLoading(this.newState) : super(user: newState.user);
}

class UserFailure extends UserState {
  final UserState newState;

  UserFailure(this.newState) : super(user: newState.user);
}

class UserLoaded extends UserState {
  final UserState newState;

  UserLoaded(this.newState) : super(user: newState.user);
}
