import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/services/auth_service.dart';
import 'package:on_time/features/timetables/data/models/socket_response_model/socket_response_model.dart';
import 'package:on_time/features/timetables/data/providers/remote/timetables_remote_provider.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/invitation_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_member_use_case/update_member_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_timetable_use_case/update_timetable_use_case.dart';

class TimetablesRepositoryImpl implements TimetablesRepository {
  const TimetablesRepositoryImpl({
    required this.remoteProvider,
    required this.authService,
  });

  final AuthService authService;
  final TimetablesRemoteProvider remoteProvider;

  @override
  Future<Either<Failure, void>> addHost(AddEventHostParams params) {
    return remoteProvider.addHost(params);
  }

  @override
  Future<Either<Failure, TimetableEntity>> create(
    CreateTimetableParams params,
  ) async {
    final response = await remoteProvider.createTimetable(params);

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (timetableModel) {
        return Right(timetableModel.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, void>> createEvent(CreateEventParams params) {
    return remoteProvider.createEvent(params);
  }

  @override
  Future<Either<Failure, void>> delete(DeleteTimetableParams params) {
    return remoteProvider.deleteTimetable(params);
  }

  @override
  Future<Either<Failure, void>> deleteEvent(DeleteEventParams params) {
    return remoteProvider.deleteEvent(params);
  }

  @override
  Future<Either<Failure, void>> leave(LeaveTimetableParams params) {
    return remoteProvider.leaveTimetable(params);
  }

  @override
  Future<Either<Failure, void>> removeHost(RemoveEventHostParams params) {
    return remoteProvider.removeHost(params);
  }

  @override
  Future<Either<Failure, void>> update(UpdateTimetableParams params) {
    return remoteProvider.updateTimetable(params);
  }

  @override
  Future<Either<Failure, void>> updateEvent(UpdateEventParams params) {
    return remoteProvider.updateEvent(params);
  }

  @override
  Future<Either<Failure, Stream<SocketResponseEntity>>> connectSocket() async {
    final response = await remoteProvider.connectSocket(
      await authService.getAccessToken ?? '',
    );

    return response.fold(
      // ignore: unnecessary_lambdas
      (failure) => Left(failure),
      (_) {
        final Stream<SocketResponseModel>? modelStream =
            remoteProvider.getSocketStream;

        if (modelStream == null) {
          return const Left(
            ServerFailure(errorMessage: 'Could not receive socket stream'),
          );
        }

        final Stream<SocketResponseEntity> entityStream = modelStream.map(
          (m) => m.toEntity(),
        );

        return Right(entityStream);
      },
    );
  }

  @override
  Future<Either<Failure, void>> disconnectSocket() {
    return remoteProvider.disconnectSocket();
  }

  @override
  Future<Either<Failure, void>> invitation(
    InvitationParams params,
  ) {
    return remoteProvider.invitation(params);
  }

  @override
  Future<Either<Failure, void>> updateMember(UpdateMemberParams params) {
    return remoteProvider.updateMember(params);
  }
}
