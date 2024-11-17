part of 'auth_cubit.dart';

class AuthState {
  const AuthState({
    this.currentUser = const UserEntity(),
    this.loginError = '',
    this.registerError = '',
    this.loginParams = const LoginParams(),
    this.registerParams = const RegisterParams(),
  });

  final UserEntity currentUser;

  final LoginParams loginParams;

  final RegisterParams registerParams;

  final String loginError;
  final String registerError;

  AuthState copyWith({
    UserEntity? currentUser,
    LoginParams? loginParams,
    RegisterParams? registerParams,
    String? loginError,
    String? registerError,
  }) {
    return AuthState(
      currentUser: currentUser ?? this.currentUser,
      loginParams: loginParams ?? this.loginParams,
      registerParams: registerParams ?? this.registerParams,
      loginError: loginError ?? this.loginError,
      registerError: registerError ?? this.registerError,
    );
  }
}
