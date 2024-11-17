import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/network/api_endpoints/api_endpoints.dart';
import 'package:on_time/core/network/network.dart';
import 'package:on_time/features/auth/data/models/token_model/token_model.dart';
import 'package:on_time/features/auth/data/models/user_model/user_model.dart';
import 'package:on_time/features/auth/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/register_use_case/register_use_case.dart';

abstract interface class AuthRemoteProvider {
  Future<Either<Failure, void>> logout();

  Future<Either<Failure, UserModel>> getCurrentUser();

  Future<Either<Failure, TokenResponseModel>> register(
    RegisterParams params,
  );

  Future<Either<Failure, TokenResponseModel>> login(
    LoginParams params,
  );
}

class AuthRemoteProviderImpl implements AuthRemoteProvider {
  AuthRemoteProviderImpl({
    required this.network,
  });

  final Network network;

  @override
  Future<Either<Failure, UserModel>> getCurrentUser() {
    return network.request(
      endpoint: ApiEndpoints.getUser,
      parser: (json) => UserModel.fromJson(
        json as Map<String, dynamic>,
      ),
    );
  }

  @override
  Future<Either<Failure, TokenResponseModel>> login(LoginParams params) {
    return network.request(
      endpoint: ApiEndpoints.login,
      data: params.toJson(),
      parser: (json) => TokenResponseModel.fromJson(
        json as Map<String, dynamic>,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> logout() {
    return network.request(
      endpoint: ApiEndpoints.logout,
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, TokenResponseModel>> register(RegisterParams params) {
    return network.request(
      endpoint: ApiEndpoints.register,
      data: params.toJson(),
      parser: (json) => TokenResponseModel.fromJson(
        json as Map<String, dynamic>,
      ),
    );
  }
}
