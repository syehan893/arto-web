import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/request/payment_approval_request.dart';
import 'package:ta_smt4/models/request_payment.dart';
import 'package:ta_smt4/models/transaction.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/history_repository.dart';
import 'package:ta_smt4/repositories/transaction_repository.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

import '../../../../models/history.dart';

part 'request_payment_state.dart';

@injectable
class RequestpaymentCubit extends Cubit<RequestPaymentState> {
  final UserRepository userRepository;
  final TransactionRepository transaction;
  final FlutterSecureStorage secureStorage;
  RequestpaymentCubit(this.userRepository, this.secureStorage, this.transaction)
      : super(const RequestPaymentState());

  void getRequestPayment() async {
    emit(RequestsLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    final history = await transaction.getRequestPayment(email ?? '');
    result.fold((l) => emit(RequestsFailure(state)), (user) {
      history.fold((l) => emit(RequestsFailure(state)),
          (r) => emit(RequestsLoaded(state.copyWith(requests: r, user: user))));
    });
  }

  void requestPayment({int? trxId, int? nominal, bool? isApprove}) async {
    emit(RequestsLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    PaymentApprovalRequest paymentApprovalRequest = PaymentApprovalRequest(
      emailReceiver: email,
      isApprove: isApprove,
      nominal: nominal,
      trxId: trxId,
    );
    final history =
        await transaction.requestPaymentApproval(paymentApprovalRequest);
    history.fold((l) => emit(RequestsFailure(state)), (user) {
      emit(RequestsLoaded(state));
    });
  }
}
