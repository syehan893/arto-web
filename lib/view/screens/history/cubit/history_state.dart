// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'history_cubit.dart';

class HistoryState extends Equatable {
  final User? user;
  final List<History> history;
  const HistoryState({
    this.history = const [],
    this.user,
  });

  @override
  List<Object?> get props => [user];

  HistoryState copyWith({
    User? user,
    List<History>? history,
  }) {
    return HistoryState(
      user: user ?? this.user,
      history: history ?? this.history,
    );
  }
}

class HistoryInitial extends HistoryState {
  final HistoryState newState;

  HistoryInitial(this.newState)
      : super(user: newState.user, history: newState.history);
}

class HistoryLoading extends HistoryState {
  final HistoryState newState;

  HistoryLoading(this.newState)
      : super(user: newState.user, history: newState.history);
}

class HistoryFailure extends HistoryState {
  final HistoryState newState;

  HistoryFailure(this.newState)
      : super(user: newState.user, history: newState.history);
}

class HistoryLoaded extends HistoryState {
  final HistoryState newState;

  HistoryLoaded(this.newState)
      : super(user: newState.user, history: newState.history);
}
