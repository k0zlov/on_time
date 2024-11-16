import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class AuthService {
  Stream<bool> get authStateChanges;

  Future<bool> isAuthorized();

  Future<String?> get getAccessToken;

  Future<String?> get getRefreshToken;

  Future<void> login({
    required String accessToken,
    required String refreshToken,
  });

  Future<void> logout();
}

class AuthServiceImpl implements AuthService {
  AuthServiceImpl({
    this.storage = const FlutterSecureStorage(),
  }) {
    _init();
  }

  final FlutterSecureStorage storage;

  Future<void> _init() async {
    _authStateController.add(await isAuthorized());
  }

  final _authStateController = StreamController<bool>.broadcast();

  @override
  Stream<bool> get authStateChanges => _authStateController.stream;

  @override
  Future<String?> get getAccessToken => storage.read(key: 'accessToken');

  @override
  Future<String?> get getRefreshToken => storage.read(key: 'refreshToken');

  @override
  Future<bool> isAuthorized() async {
    final Map<String, String> data = await storage.readAll();

    final String? refreshToken = data['refreshToken'];
    final String? accessToken = data['accessToken'];

    return refreshToken != null && accessToken != null;
  }

  @override
  Future<void> login({
    required String accessToken,
    required String refreshToken,
  }) async {
    await storage.write(key: 'refreshToken', value: refreshToken);
    await storage.write(key: 'accessToken', value: accessToken);
    _authStateController.add(true);
  }

  @override
  Future<void> logout() async {
    await storage.deleteAll();
    _authStateController.add(false);
  }
}
