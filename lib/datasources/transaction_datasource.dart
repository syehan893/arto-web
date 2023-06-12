import 'package:injectable/injectable.dart';
import 'package:sprintf/sprintf.dart';
import 'package:ta_smt4/common/constants/endpoints.dart';
import 'package:ta_smt4/common/network/api_result.dart';
import 'package:ta_smt4/common/network/datasource_mixin.dart';
import 'package:ta_smt4/common/network/dio_interceptors.dart';
import 'package:ta_smt4/models/request/payment_approval_request.dart';
import 'package:ta_smt4/models/request/request_payment_request.dart';
import 'package:ta_smt4/models/request/topup_request.dart';
import 'package:ta_smt4/models/request/transfer_request.dart';

abstract class TransactionDatasource {
  Future<APIResult> getTransactionByEmail(String email);
  Future<APIResult> getRequestPayment(String email);
  Future<APIResult> transfer(TransferRequest transferRequest);
  Future<APIResult> topup(TopupRequest topUpRequest);
  Future<APIResult> requestPayment(RequestPaymentRequest request);
  Future<APIResult> requestPaymentApproval(
      PaymentApprovalRequest paymentApprovalRequest);
}

@LazySingleton(as: TransactionDatasource)
class TransactionRepositoryImpl extends TransactionDatasource
    with DatasourceExecutionMixin {
  final HTTPClient httpClient;

  TransactionRepositoryImpl(this.httpClient);

  @override
  Future<APIResult> getTransactionByEmail(String email) async {
    return await exec(
      httpClient.dio.get(
        sprintf(Endpoints.transaction.getTransactionByEmail, [email]),
      ),
    );
  }

  @override
  Future<APIResult> getRequestPayment(String email) async {
    return await exec(
      httpClient.dio.get(
        sprintf(Endpoints.transaction.getRequestpayment, [email]),
      ),
    );
  }

  @override
  Future<APIResult> transfer(TransferRequest transferRequest) async {
    return await exec(
      httpClient.dio.post(
        Endpoints.transaction.transfer,
        data: transferRequest.toJson(),
      ),
    );
  }

  @override
  Future<APIResult> topup(TopupRequest topUpRequest) async {
    return await exec(
      httpClient.dio.post(
        Endpoints.transaction.topup,
        data: topUpRequest.toJson(),
      ),
    );
  }

  @override
  Future<APIResult> requestPayment(RequestPaymentRequest request) async {
    return await exec(
      httpClient.dio.post(
        Endpoints.transaction.requestPayment,
        data: request.toJson(),
      ),
    );
  }

  @override
  Future<APIResult> requestPaymentApproval(
      PaymentApprovalRequest paymentApprovalRequest) async {
    return await exec(
      httpClient.dio.post(
        Endpoints.transaction.requestPaymentApproval,
        data: paymentApprovalRequest.toJson(),
      ),
    );
  }
}
