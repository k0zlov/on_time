import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

class ConnectSocketUseCase
    implements UseCase<Stream<SocketResponseEntity>, NoParams> {
  const ConnectSocketUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, Stream<SocketResponseEntity>>> call(NoParams params) {
    return repository.connectSocket();
  }
}
