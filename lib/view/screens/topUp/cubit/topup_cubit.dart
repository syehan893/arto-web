import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/request/topup_request.dart';
import 'package:ta_smt4/models/request/transfer_request.dart';
import 'package:ta_smt4/models/transaction.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/history_repository.dart';
import 'package:ta_smt4/repositories/transaction_repository.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

import '../../../../models/history.dart';

part 'topup_state.dart';

@injectable
class TransferRequestCubit extends Cubit<TransferRequestState> {
  final UserRepository userRepository;
  final TransactionRepository transactionRepository;
  final FlutterSecureStorage secureStorage;
  TransferRequestCubit(
      this.userRepository, this.secureStorage, this.transactionRepository)
      : super(TransferRequestState(transferRequest: TopupRequest()));

  void getUser() async {
    emit(TransferRequestLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    result.fold((l) => emit(TransferRequestFailure(state)), (user) {
      emit(TransferRequestLoaded(state.copyWith(user: user)));
    });
  }

  void transfer(
      {String? noRek, int? nominal, String? detail, String? ewallet}) async {
    emit(TransferRequestLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    emit(state.copyWith(
        transferRequest: state.transferRequest!.copyWith(emailSender: email)));
    final result =
        await transactionRepository.topup(state.transferRequest!.copyWith(
      phoneNumber: noRek,
      nominal: nominal,
      detail: detail,
      ewallet: ewallet,
      emailSender: email,
    ));
    result.fold((l) => emit(TransferRequestFailure(state)), (user) {
      emit(TransferRequestLoaded(state.copyWith(user: user)));
    });
  }
}
