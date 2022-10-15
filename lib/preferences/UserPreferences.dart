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

  Future<void> logout() async {
    await _storage.delete(key: 'token');
  }
}
