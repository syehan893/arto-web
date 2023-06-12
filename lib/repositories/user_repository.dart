import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/models/user_model.dart';

import '../common/failures/base_failures.dart';
import '../common/failures/common_failures.dart';
import '../common/mixins/mixins.dart';
import '../common/network/network_check.dart';
import '../datasources/user_datasource.dart';

abstract class UserRepository {
  Future<Either<BaseFailure, User>> getUser(String email);
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository with APIResultErrorChecker {
  final NetworkCheck networkCheck;
  final UserDatasource userDatasource;
  UserRepositoryImpl({
    required this.networkCheck,
    required this.userDatasource,
  });
  @override
  Future<Either<BaseFailure, User>> getUser(String email) async {
    final result = await userDatasource.getUser(email);
    try {
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }
      List users = result.internalResponse?.responseData?['response'] as List;
      return Right(User.fromJson(users[0]));
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }
}
