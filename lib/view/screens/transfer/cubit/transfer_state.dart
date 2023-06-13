// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'transfer_cubit.dart';

class TransferRequestState extends Equatable {
  final User? user;
  final TransferRequest? transferRequest;
  const TransferRequestState({
    this.transferRequest,
    this.user,
  });

  @override
  List<Object?> get props => [user];

  TransferRequestState copyWith({
    User? user,
    TransferRequest? transferRequest,
  }) {
    return TransferRequestState(
      user: user ?? this.user,
      transferRequest: transferRequest ?? this.transferRequest,
    );
  }
}

class TransferRquestInitial extends TransferRequestState {
  final TransferRequestState newState;

  TransferRquestInitial(this.newState)
      : super(user: newState.user, transferRequest: newState.transferRequest);
}

class TransferRequestLoading extends TransferRequestState {
  final TransferRequestState newState;

  TransferRequestLoading(this.newState)
      : super(user: newState.user, transferRequest: newState.transferRequest);
}

class TransferRequestFailure extends TransferRequestState {
  final TransferRequestState newState;

  TransferRequestFailure(this.newState)
      : super(user: newState.user, transferRequest: newState.transferRequest);
}

class TransferRequestLoaded extends TransferRequestState {
  final TransferRequestState newState;

  TransferRequestLoaded(this.newState)
      : super(user: newState.user, transferRequest: newState.transferRequest);
}
