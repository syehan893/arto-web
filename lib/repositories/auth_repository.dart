import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../common/failures/base_failures.dart';
import '../common/failures/common_failures.dart';
import '../common/mixins/mixins.dart';
import '../common/network/network_check.dart';
import '../datasources/auth_datasource.dart';
import '../models/request/login_request.dart';
import '../models/token.dart';

abstract class AuthenticationRepository {
  Future<Either<BaseFailure, Token>> login(LoginRequest request);
}

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository
    with APIResultErrorChecker {
  final NetworkCheck networkCheck;
  final AuthenticationDatasource authenticationDatasource;
  AuthenticationRepositoryImpl({
    required this.networkCheck,
    required this.authenticationDatasource,
  });
  @override
  Future<Either<BaseFailure, Token>> login(LoginRequest request) async {
    final result = await authenticationDatasource.login(request);
    return checkServiceResultError<Token>(
      result: result,
      errorPrefix: 'Login Error: ',
      executeNext: () {
        try {
          return Right(Token.fromJson(
              jsonEncode(result.internalResponse?.responseData)));
        } catch (e) {
          return Left(JSONParseFailure(error: e));
        }
      },
    );
  }
}
