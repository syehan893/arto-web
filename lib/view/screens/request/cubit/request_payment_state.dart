// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'request_payment_cubit.dart';

class RequestPaymentState extends Equatable {
  final User? user;
  final List<RequestPayment> requests;
  const RequestPaymentState({
    this.requests = const [],
    this.user,
  });

  @override
  List<Object?> get props => [user];

  RequestPaymentState copyWith({
    User? user,
    List<RequestPayment>? requests,
  }) {
    return RequestPaymentState(
      user: user ?? this.user,
      requests: requests ?? this.requests,
    );
  }
}

class RequestInitial extends RequestPaymentState {
  final RequestPaymentState newState;

  RequestInitial(this.newState)
      : super(user: newState.user, requests: newState.requests);
}

class RequestsLoading extends RequestPaymentState {
  final RequestPaymentState newState;

  RequestsLoading(this.newState)
      : super(user: newState.user, requests: newState.requests);
}

class RequestsFailure extends RequestPaymentState {
  final RequestPaymentState newState;

  RequestsFailure(this.newState)
      : super(user: newState.user, requests: newState.requests);
}

class RequestsLoaded extends RequestPaymentState {
  final RequestPaymentState newState;

  RequestsLoaded(this.newState)
      : super(user: newState.user, requests: newState.requests);
}
