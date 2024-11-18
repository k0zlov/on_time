import 'package:bloc/bloc.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/di_container.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/use_cases/get_user_use_case/get_user_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/logout_use_case/logout_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/register_use_case/register_use_case.dart';
import 'package:on_time/util/input_validator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.onLoginCallback,
    required this.onLogoutCallback,
    required this.loginUseCase,
    required this.registerUseCase,
    required this.logoutUseCase,
    required this.getUserUseCase,
  }) : super(const AuthState()) {
    _init();
  }

  AuthState _state = const AuthState();

  final Future<void> Function() onLoginCallback;
  final Future<void> Function() onLogoutCallback;

  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;
  final GetUserUseCase getUserUseCase;
  final RegisterUseCase registerUseCase;

  Future<void> _init() async {
    final userOrFailure = await getUserUseCase(NoParams());

    await userOrFailure.fold(
      (_) => onLogoutCallback(),
      (user) async {
        _state = _state.copyWith(currentUser: user);
        emit(_state);
        await onLoginCallback();
      },
    );
    getIt.signalReady(this);
  }

  Future<void> onLogout() async {
    await logoutUseCase(NoParams());
    _state = const AuthState();
    onLogoutCallback();
  }

  Future<void> onLogin() async {
    if (!validateLogin()) return;

    final failureOrUser = await loginUseCase(_state.loginParams);

    failureOrUser.fold(
      (failure) {
        _state = _state.copyWith(loginError: failure.errorMessage);
      },
      (user) {
        _state = _state.copyWith(currentUser: user);
      },
    );

    emit(_state);
    onLoginCallback();
  }

  Future<void> onRegister() async {
    if (!validateRegistration()) return;

    final failureOrUser = await registerUseCase(_state.registerParams);

    failureOrUser.fold(
      (failure) {
        _state = _state.copyWith(registerError: failure.errorMessage);
      },
      (user) {
        _state = _state.copyWith(currentUser: user);
      },
    );

    emit(_state);
    onLoginCallback();
  }

  bool validateLogin() {
    final emailError = InputValidator.isEmailValid(_state.loginParams.email);
    final passwordError =
        InputValidator.isPasswordValid(_state.loginParams.password);

    final hasError = emailError != null || passwordError != null;

    _state = _state.copyWith(
      loginError: hasError ? emailError ?? passwordError! : '',
    );

    emit(_state);

    return !hasError;
  }

  bool validateRegistration() {
    final emailError = InputValidator.isEmailValid(
      _state.registerParams.email,
    );
    final passwordError = InputValidator.isPasswordValid(
      _state.registerParams.password,
    );
    final nameError = InputValidator.isNameValid(
      _state.registerParams.name,
    );
    final lastNameError = InputValidator.isLastNameValid(
      _state.registerParams.lastName,
    );

    final hasError = emailError != null ||
        passwordError != null ||
        nameError != null ||
        lastNameError != null;

    _state = _state.copyWith(
      registerError: hasError
          ? emailError ?? passwordError ?? nameError ?? lastNameError!
          : '',
    );

    emit(_state);

    return !hasError;
  }

  void onLoginEmailChanged(String text) {
    if (text == _state.loginParams.email) return;

    _state = _state.copyWith(
      loginParams: _state.loginParams.copyWith(email: text),
    );

    if (text.isNotEmpty) {
      validateLogin();
    }

    emit(_state);
  }

  void onLoginPasswordChanged(String text) {
    if (text == _state.loginParams.password) return;

    _state = _state.copyWith(
      loginParams: _state.loginParams.copyWith(password: text),
    );

    if (text.isNotEmpty) {
      validateLogin();
    }

    emit(_state);
  }

  void onRegisterNameChanged(String text) {
    if (text == _state.registerParams.name) return;

    _state = _state.copyWith(
      registerParams: _state.registerParams.copyWith(name: text),
    );

    if (text.isNotEmpty) {
      validateRegistration();
    }

    emit(_state);
  }

  void onRegisterLastNameChanged(String text) {
    if (text == _state.registerParams.lastName) return;

    _state = _state.copyWith(
      registerParams: _state.registerParams.copyWith(lastName: text),
    );

    if (text.isNotEmpty) {
      validateRegistration();
    }

    emit(_state);
  }

  void onRegisterEmailChanged(String text) {
    if (text == _state.registerParams.email) return;

    _state = _state.copyWith(
      registerParams: _state.registerParams.copyWith(email: text),
    );

    if (text.isNotEmpty) {
      validateRegistration();
    }

    emit(_state);
  }

  void onRegisterPasswordChanged(String text) {
    if (text == _state.registerParams.password) return;

    _state = _state.copyWith(
      registerParams: _state.registerParams.copyWith(password: text),
    );

    if (text.isNotEmpty) {
      validateRegistration();
    }

    emit(_state);
  }
}
