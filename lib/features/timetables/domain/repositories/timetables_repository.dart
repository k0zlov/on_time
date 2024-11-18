import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_timetable_use_case/update_timetable_use_case.dart';

abstract interface class TimetablesRepository {
  Future<Either<Failure, TimetableEntity>> create(
    CreateTimetableParams params,
  );

  Future<Either<Failure, void>> update(
    UpdateTimetableParams params,
  );

  Future<Either<Failure, void>> delete(
    DeleteTimetableParams params,
  );

  Future<Either<Failure, void>> leave(
    LeaveTimetableParams params,
  );

  Future<Either<Failure, void>> createEvent(
    CreateEventParams params,
  );

  Future<Either<Failure, void>> updateEvent(
    UpdateEventParams params,
  );

  Future<Either<Failure, void>> deleteEvent(
    DeleteEventParams params,
  );

  Future<Either<Failure, void>> addHost(
    AddEventHostParams params,
  );

  Future<Either<Failure, void>> removeHost(
    RemoveEventHostParams params,
  );

  Future<Either<Failure, Stream<SocketResponseEntity>>> connectSocket();

  Future<Either<Failure, void>> disconnectSocket();
}
