import 'package:ta_smt4/datasources/user_datasource.dart';

class UserRepository {
  final UserDatasource user_datasource = UserDatasource();

  Future<UserRespone> getData() async {
    final response = await user_datasource.getData();
    if (response.error != null) {
      return UserRespone.error(response.error);
    } else {
      return UserRespone.success(response.data);
    }
  }

  Future<UserRespone> postData(Map<String, dynamic> data) async {
    final response = await user_datasource.postData(data);
    if (response.error != null) {
      return UserRespone.error(response.error);
    } else {
      return UserRespone.success(response.data);
    }
  }
}

class UserRespone {
  final dynamic data;
  final String error;

  UserRespone.success(this.data) : error = "error";
  UserRespone.error(this.error) : data = null;
}
