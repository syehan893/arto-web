import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/transaction.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/transaction_repository.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

part 'dahboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final UserRepository userRepository;
  final TransactionRepository transactionRepository;
  final FlutterSecureStorage secureStorage;
  DashboardCubit(
      this.userRepository, this.secureStorage, this.transactionRepository)
      : super(const DashboardState());

  void getUser() async {
    emit(DashboardLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    final trx = await transactionRepository.getTransactionByEmail(email ?? '');
    result.fold((l) => emit(DashboardFailure(state)), (user) {
      trx.fold(
          (l) => emit(DashboardFailure(state)),
          (trxs) => emit(
              DashboardLoaded(state.copyWith(transaction: trxs, user: user))));
    });
  }
}
