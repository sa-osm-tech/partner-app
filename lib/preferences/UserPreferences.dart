import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserPreferences {
  final _storage = const FlutterSecureStorage();

  Future<void> setToken(
    String token,
  ) async {
    await _storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    final token = await _storage.read(key: 'token');
    return token;
  }

  Future<void> setUserId(String userId) async {
    await _storage.write(key: 'userId', value: userId);
  }

  Future<String?> getUserId() async {
    final userId = await _storage.read(key: 'userId');
    return userId;
  }

  Future<void> logout() async {
    await _storage.delete(key: 'token');
  }
}
