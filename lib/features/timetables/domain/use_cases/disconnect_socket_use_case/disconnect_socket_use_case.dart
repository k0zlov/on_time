import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

class DisconnectSocketUseCase implements UseCase<void, NoParams> {
  const DisconnectSocketUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return repository.disconnectSocket();
  }
}
