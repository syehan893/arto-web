import 'package:injectable/injectable.dart';
import 'package:ta_smt4/common/constants/endpoints.dart';
import 'package:ta_smt4/common/network/api_result.dart';
import 'package:ta_smt4/common/network/datasource_mixin.dart';
import 'package:ta_smt4/common/network/dio_interceptors.dart';

abstract class UserDatasource {
  Future<APIResult> getUser();
}

@LazySingleton(as: UserDatasource)
class UserDatasourceImpl extends UserDatasource
    with DatasourceExecutionMixin {
  final HTTPClient httpClient;

  UserDatasourceImpl(this.httpClient);

  @override
  Future<APIResult> getUser() async {
    return await exec(
      httpClient.dio.get(
        Endpoints.user.getUser,
      ),
    );
  }
}
