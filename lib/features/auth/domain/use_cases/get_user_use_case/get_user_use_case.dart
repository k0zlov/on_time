import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/repositories/auth_repository.dart';

class GetUserUseCase implements UseCase<UserEntity, NoParams> {
  const GetUserUseCase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) {
    return repository.getUser();
  }
}
