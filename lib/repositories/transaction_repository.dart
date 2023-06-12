import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/datasources/transaction_datasource.dart';
import 'package:ta_smt4/models/request/payment_approval_request.dart';
import 'package:ta_smt4/models/request/request_payment_request.dart';
import 'package:ta_smt4/models/request/topup_request.dart';
import 'package:ta_smt4/models/request/transfer_request.dart';
import 'package:ta_smt4/models/request_payment.dart';
import 'package:ta_smt4/models/transaction.dart';

import '../common/failures/base_failures.dart';
import '../common/failures/common_failures.dart';
import '../common/mixins/mixins.dart';
import '../common/network/network_check.dart';

abstract class TransactionRepository {
  Future<Either<BaseFailure, List<Transaction>>> getTransactionByEmail(
      String email);
  Future<Either<BaseFailure, List<RequestPayment>>> getRequestPayment(
      String email);
  Future<Either<BaseFailure, dynamic>> transfer(
      TransferRequest transferRequest);
  Future<Either<BaseFailure, dynamic>> topup(TopupRequest topUpRequest);
  Future<Either<BaseFailure, dynamic>> requestPayment(
      RequestPaymentRequest request);
  Future<Either<BaseFailure, dynamic>> requestPaymentApproval(
      PaymentApprovalRequest paymentApprovalRequest);
}

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl extends TransactionRepository
    with APIResultErrorChecker {
  final NetworkCheck networkCheck;
  final TransactionDatasource transactionDatasource;
  TransactionRepositoryImpl({
    required this.networkCheck,
    required this.transactionDatasource,
  });

  @override
  Future<Either<BaseFailure, List<RequestPayment>>> getRequestPayment(
      String email) async {
    try {
      final result = await transactionDatasource.getRequestPayment(email);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }
      List requestPayment = result as List;
      return Right(
          requestPayment.map((e) => RequestPayment.fromJson(e)).toList());
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }

  @override
  Future<Either<BaseFailure, List<Transaction>>> getTransactionByEmail(
      String email) async {
    try {
      final result = await transactionDatasource.getTransactionByEmail(email);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }
      List requestPayment = result as List;
      return Right(requestPayment.map((e) => Transaction.fromJson(e)).toList());
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }

  @override
  Future<Either<BaseFailure, dynamic>> requestPayment(
      RequestPaymentRequest request) async {
    try {
      final result = await transactionDatasource.requestPayment(request);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }

      return Right(result);
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }

  @override
  Future<Either<BaseFailure, dynamic>> requestPaymentApproval(
      PaymentApprovalRequest paymentApprovalRequest) async {
    try {
      final result = await transactionDatasource
          .requestPaymentApproval(paymentApprovalRequest);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }

      return Right(result);
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }

  @override
  Future<Either<BaseFailure, dynamic>> topup(TopupRequest topUpRequest) async {
    try {
      final result = await transactionDatasource.topup(topUpRequest);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }

      return Right(result);
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }

  @override
  Future<Either<BaseFailure, dynamic>> transfer(
      TransferRequest transferRequest) async {
    try {
      final result = await transactionDatasource.transfer(transferRequest);
      if (result.execErrorMessage != null) {
        return Left(JSONParseFailure(error: result.execErrorMessage));
      }

      return Right(result);
    } catch (e) {
      return Left(JSONParseFailure(error: e));
    }
  }
}
