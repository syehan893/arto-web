import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/common_storage_constant.dart';
import 'package:ta_smt4/models/transaction.dart';
import 'package:ta_smt4/models/user_model.dart';
import 'package:ta_smt4/repositories/history_repository.dart';
import 'package:ta_smt4/repositories/transaction_repository.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

import '../../../../models/history.dart';

part 'history_state.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  final UserRepository userRepository;
  final HistoryRepository historyRepository;
  final FlutterSecureStorage secureStorage;
  HistoryCubit(this.userRepository, this.secureStorage, this.historyRepository)
      : super(const HistoryState());

  void getHistories() async {
    emit(HistoryLoading(state));
    String? email = await secureStorage.read(key: CommonStorageKeys.email);
    final result = await userRepository.getUser(email ?? '');
    final history = await historyRepository.getHistoryByEmail(email ?? '');
    result.fold((l) => emit(HistoryFailure(state)), (user) {
      history.fold(
          (l) => emit(HistoryFailure(state)),
          (r) => emit(
              HistoryLoaded(state.copyWith(history: r.reversed.toList(), user: user))));
    });
  }
}
