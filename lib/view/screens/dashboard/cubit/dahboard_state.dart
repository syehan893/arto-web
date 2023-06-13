// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final User? user;
  final List<Transaction> transaction;
  const DashboardState({
    this.transaction = const [],
    this.user,
  });

  @override
  List<Object?> get props => [user];

  DashboardState copyWith({
    User? user,
    List<Transaction>? transaction,
  }) {
    return DashboardState(
      user: user ?? this.user,
      transaction: transaction ?? this.transaction,
    );
  }
}

class DashboardInitial extends DashboardState {
  final DashboardState newState;

  DashboardInitial(this.newState)
      : super(user: newState.user, transaction: newState.transaction);
}

class DashboardLoading extends DashboardState {
  final DashboardState newState;

  DashboardLoading(this.newState)
      : super(user: newState.user, transaction: newState.transaction);
}

class DashboardFailure extends DashboardState {
  final DashboardState newState;

  DashboardFailure(this.newState)
      : super(user: newState.user, transaction: newState.transaction);
}

class DashboardLoaded extends DashboardState {
  final DashboardState newState;

  DashboardLoaded(this.newState)
      : super(user: newState.user, transaction: newState.transaction);
}
