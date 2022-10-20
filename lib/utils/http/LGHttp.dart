import 'package:dio/dio.dart';
import 'package:logerex_partner/features/login/models/LoginModel.dart';
import 'package:logerex_partner/features/more-settings/models/personal-profile/PersonalProfileModel.dart';
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
      final token = response.data['data']['token'];
      await UserPreferences().setToken('$token');
      await UserPreferences().setUserId(jsonResponse.id);
    } on DioError catch (e) {
      // print('Error: ${e.response?.data}');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<PersonalProfileModel> getUserProfile(String userId) async {
    try {
      final response =
          await _dio.get('${LGEndpoints.acctMgmtPath}/account/$userId');
      final jsonResponse = PersonalProfileModel.fromJson(response.data['data']);
      print(jsonResponse);
      return jsonResponse;
    } on DioError catch (e) {
      // print('Error: ${e.response?.data}');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> verifyUserPassword(String currentUserPassword) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.put(
        '${LGEndpoints.acctMgmtPath}/account/verify-password',
        data: {'old_password': currentUserPassword},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      if (response.data['status']) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> resetUserPassword(String newUserPassword) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.put(
        '${LGEndpoints.acctMgmtPath}/account/reset-password',
        data: {'new_password': newUserPassword},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      // print(response);
      if (response.data['status']) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateUserPhoneNumber(String newUserPhoneNumber) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.put(
        '${LGEndpoints.acctMgmtPath}/account/update',
        data: {'phone_number': '0$newUserPhoneNumber'},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      if (response.data['status']) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      // print(e.response?.data);
      return false;
    } catch (e) {
      return false;
    }
  }
}
