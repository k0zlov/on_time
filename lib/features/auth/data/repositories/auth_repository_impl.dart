import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/services/auth_service.dart';
import 'package:on_time/features/auth/data/providers/remote/auth_remote_provider.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/repositories/auth_repository.dart';
import 'package:on_time/features/auth/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/register_use_case/register_use_case.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this.remoteProvider,
    required this.authService,
  });

  final AuthService authService;
  final AuthRemoteProvider remoteProvider;

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    final response = await remoteProvider.getCurrentUser();

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (userModel) {
        final UserEntity userEntity = userModel.toEntity();
        return Right(userEntity);
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> login(LoginParams params) async {
    final response = await remoteProvider.login(params);

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (token) async {
        await authService.login(
          accessToken: token.accessToken,
          refreshToken: token.refreshToken,
        );
        return getUser();
      },
    );
  }

  @override
  Future<Either<Failure, void>> logout() async {
    final response = await remoteProvider.logout();

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (_) async {
        await authService.logout();
        return const Right(null);
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> register(RegisterParams params) async {
    final response = await remoteProvider.register(params);

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (token) async {
        await authService.login(
          accessToken: token.accessToken,
          refreshToken: token.refreshToken,
        );
        return getUser();
      },
    );
  }
}
