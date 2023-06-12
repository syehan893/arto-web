import 'package:injectable/injectable.dart';
import 'package:sprintf/sprintf.dart';
import 'package:ta_smt4/common/constants/endpoints.dart';
import 'package:ta_smt4/common/network/api_result.dart';
import 'package:ta_smt4/common/network/datasource_mixin.dart';
import 'package:ta_smt4/common/network/dio_interceptors.dart';

abstract class HistoryDatasource {
  Future<APIResult> getHistoryByEmail(String email);
}

@LazySingleton(as: HistoryDatasource)
class HistoryDatasourceImpl extends HistoryDatasource with DatasourceExecutionMixin {
  final HTTPClient httpClient;

  HistoryDatasourceImpl(this.httpClient);

  @override
  Future<APIResult> getHistoryByEmail(String email) async {
    return await exec(
      httpClient.dio.get(
        sprintf(Endpoints.history.getHistoryByEmail, [email]),
      ),
    );
  }
}
