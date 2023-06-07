import 'package:dio/dio.dart';
import 'package:path/path.dart';
//import 'package:ta_smt4/models/userSource_model.dart';
import 'package:ta_smt4/view/screens/user/user.dart';

class UserDatasource {
  final Dio _dio = Dio();

  Future<UserSource> getData() async {
    try {
      final response = await _dio.get('http://13.229.119.11:3000/api/data');
      if (response.statusCode == 200) {
        return UserSource.success(response.data);
      } else {
        return UserSource.error('Failed to load data');
      }
    } catch (e) {
      return UserSource.error(e.toString());
    }
  }

  Future<UserSource> postData(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('/data', data: data);
      if (response.statusCode == 200) {
        return UserSource.success(response.data);
      } else {
        return UserSource.error('Failed to post data');
      }
    } catch (e) {
      return UserSource.error(e.toString());
    }
  }
}

class UserSource {
  final dynamic data;
  final String error;

  UserSource.success(this.data) : error = "error";
  UserSource.error(this.error) : data = null;
}