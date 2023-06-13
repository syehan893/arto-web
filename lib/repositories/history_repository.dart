import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/datasources/history_datasource.dart';
import 'package:ta_smt4/models/history.dart';

import '../common/failures/base_failures.dart';
import '../common/failures/common_failures.dart';
import '../common/mixins/mixins.dart';
import '../common/network/network_check.dart';

abstract class HistoryRepository {
  Future<Either<BaseFailure, List<History>>> getHistoryByEmail(String email);
}

@LazySingleton(as: HistoryRepository)
class HistoryRepositoryImpl extends HistoryRepository
    with APIResultErrorChecker {
  final NetworkCheck networkCheck;
  final HistoryDatasource historyDatasource;
  HistoryRepositoryImpl({
    required this.networkCheck,
    required this.historyDatasource,
  });
  @override
  Future<Either<BaseFailure, List<History>>> getHistoryByEmail(
      String email) async {
    final result = await historyDatasource.getHistoryByEmail(email);
    try {
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }
      List histories = result.internalResponse?.responseData?['response'] as List;
      return Right(histories.map((e) => History.fromJson(e)).toList());
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }
}
