import 'package:dio/dio.dart';
import 'package:logerex_partner/features/login/models/LoginModel.dart';
import 'package:logerex_partner/preferences/UserPreferences.dart';
import 'package:logerex_partner/utils/http/LGEndpoints.dart';

class LGHttp {
  final _dio = Dio(
    BaseOptions(
      baseUrl: LGEndpoints.baseURL,
      connectTimeout: LGEndpoints.connectionTimeout,
      receiveTimeout: LGEndpoints.receiveTimeout,
      responseType: ResponseType.json,
    ),
  );
  Future<void> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '${LGEndpoints.acctMgmtPath}/auth/login',
        data: {'email': username, 'password': password},
      );
      final jsonResponse = LoginModel.fromJson(response.data['data']);
      print(jsonResponse);
      final token = response.data['data']['token'];
      await UserPreferences().setToken('Bearer $token');
      await UserPreferences().setUserId(jsonResponse.id);
    } on DioError catch (e) {
      print('Error: ${e.response?.data}');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
