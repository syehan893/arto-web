import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/models/user_model.dart';

import '../common/failures/base_failures.dart';
import '../common/failures/common_failures.dart';
import '../common/mixins/mixins.dart';
import '../common/network/network_check.dart';
import '../datasources/user_datasource.dart';
import '../models/token.dart';

abstract class UserRepository {
  Future<Either<BaseFailure, List<User>>> getUser();
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository
    with APIResultErrorChecker {
  final NetworkCheck networkCheck;
  final UserDatasource userDatasource;
  UserRepositoryImpl({
    required this.networkCheck,
    required this.userDatasource,
  });
  @override
  Future<Either<BaseFailure, List<User>>> getUser() async {
    final result = await userDatasource.getUser();
    return checkServiceResultError <List<User>>(
      result: result,
      errorPrefix: 'Login Error: ',
      executeNext: () {
        try {
          List users = result as List;
          return Right(users.map((e) => User.fromJson(e)).toList());
        } catch (e) {
          return Left(JSONParseFailure(error: e));
        }
      },
    );
  }
}
