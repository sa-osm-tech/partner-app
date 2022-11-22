import 'package:dio/dio.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/CreateEmployeeModel.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
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

  // Account Management
  Future<bool> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '${LGEndpoints.acctMgmtPath}/auth/login',
        data: {'email': username, 'password': password},
      );
      final jsonResponse = LoginModel.fromJson(response.data['data']);

      final token = response.data['data']['token'];
      await UserPreferences().setToken('$token');
      await UserPreferences().setUserId(jsonResponse.id);
      return true;
    } on DioError catch (e) {
      print('Error: ${e.response?.data}');
      return false;
    } catch (e) {
      print('Error: ${e}');
      return false;
    }
  }

  Future<PersonalProfileModel> getUserProfile(String userId) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.get(
        '${LGEndpoints.acctMgmtPath}/account/$userId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      final jsonResponse = PersonalProfileModel.fromJson(response.data['data']);
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

  Future<List<EmployeeModel>> getEmployees() async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.get(
        '${LGEndpoints.acctMgmtPath}/account/employees',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      final data = List<dynamic>.from(response.data['data']);
      final result = data.map((e) => EmployeeModel.fromJson(e)).toList();
      return result;
    } on DioError catch (e) {
      // print(e.response?.data);
      // return false;
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<CreateEmployeeModel> createEmployee(
    String email,
    String firstName,
    String lastName,
    String phoneNumber,
  ) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.post(
        '${LGEndpoints.acctMgmtPath}/account/employee',
        data: {
          'email': email,
          'first_name': firstName,
          'last_name': lastName,
          'phone_number': phoneNumber,
          'profile_picture_url': 'dummy',
        },
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      final jsonResponse = CreateEmployeeModel.fromJson(response.data['data']);
      return jsonResponse;
    } on DioError catch (e) {
      // print(e.response?.data);
      // return false;
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<OrderModel>> getOrderPool() async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.get(
        '${LGEndpoints.orderPath}/orders/all',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      final data = List<dynamic>.from(response.data['data']['orders']);
      final result = data.map((e) => OrderModel.fromJson(e)).toList();
      return result;
    } on DioError catch (e) {
      // print(e.response?.data);
      // return false;
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> assignOrder(
    String orderId,
    String driverFirstName,
    String driverId,
    String driverLastName,
    String ownerId,
  ) async {
    try {
      final token = await UserPreferences().getToken();
      final response = await _dio.post(
        '${LGEndpoints.orderPath}/orders/assign/$orderId',
        data: {
          'driver_first_name': driverFirstName,
          'driver_id': driverId,
          'driver_last_name': driverLastName,
          'owner_id': ownerId,
        },
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print(response);
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
