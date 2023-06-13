import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/request/transfer_request.dart';
import 'package:ta_smt4/models/transaction.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/history_repository.dart';
import 'package:ta_smt4/repositories/transaction_repository.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

import '../../../../models/history.dart';

part 'transfer_state.dart';

@injectable
class TransferRequestCubit extends Cubit<TransferRequestState> {
  final UserRepository userRepository;
  final TransactionRepository transactionRepository;
  final FlutterSecureStorage secureStorage;
  TransferRequestCubit(
      this.userRepository, this.secureStorage, this.transactionRepository)
      : super(TransferRequestState(transferRequest: TransferRequest()));

  void getUser() async {
    emit(TransferRequestLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    result.fold((l) => emit(TransferRequestFailure(state)), (user) {
      emit(TransferRequestLoaded(state.copyWith(user: user)));
    });
  }

  void transfer(
      {String? noRek, int? nominal, String? detail, String? emailReceiver}) async {
    emit(TransferRequestLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(emailSender: email)));
    final result =
        await transactionRepository.transfer(state.transferRequest!.copyWith(
      noRek: noRek,
      nominal: nominal,
      detail: detail,
      emailReceiver: emailReceiver,
      emailSender: email,
    ));
    result.fold((l) => emit(TransferRequestFailure(state)), (user) {
      emit(TransferRequestLoaded(state.copyWith(user: user)));
    });
  }

  void setNoRek(String noRek) {
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(noRek: noRek)));
  }

  void setNominal(int nominal) {
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(nominal: nominal)));
  }

  void setEmailSender(String email) {
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(emailSender: email)));
  }

  void setEmailReceiver(String email) {
    emit(state.copyWith(
        transferRequest:
            state.transferRequest!.copyWith(emailReceiver: email)));
  }

  void setDetail(String detail) {
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(detail: detail)));
  }
}
