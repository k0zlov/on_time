import 'package:bloc/bloc.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/connect_socket_use_case/connect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/disconnect_socket_use_case/disconnect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_timetable_use_case/update_timetable_use_case.dart';

part 'timetables_state.dart';

class TimetablesCubit extends Cubit<TimetablesState> {
  TimetablesCubit({
    required this.addEventHostUseCase,
    required this.createEventUseCase,
    required this.createTimetableUseCase,
    required this.deleteEventUseCase,
    required this.deleteTimetableUseCase,
    required this.leaveTimetableUseCase,
    required this.removeEventHostUseCase,
    required this.updateEventUseCase,
    required this.updateTimetableUseCase,
    required this.connectSocketUseCase,
    required this.disconnectSocketUseCase,
  }) : super(const TimetablesState());

  final AddEventHostUseCase addEventHostUseCase;
  final CreateEventUseCase createEventUseCase;
  final CreateTimetableUseCase createTimetableUseCase;
  final DeleteEventUseCase deleteEventUseCase;
  final DeleteTimetableUseCase deleteTimetableUseCase;
  final LeaveTimetableUseCase leaveTimetableUseCase;
  final RemoveEventHostUseCase removeEventHostUseCase;
  final UpdateEventUseCase updateEventUseCase;
  final UpdateTimetableUseCase updateTimetableUseCase;
  final ConnectSocketUseCase connectSocketUseCase;
  final DisconnectSocketUseCase disconnectSocketUseCase;

  TimetablesState _state = const TimetablesState();

  Future<void> onLogin() async {
    final failureOrStream = await connectSocketUseCase(NoParams());

    failureOrStream.fold(
      (failure) {
        print(failure.errorMessage);
      },
      (stream) {
        stream.listen((e) {
          List<TimetableEntity> timetables = [...e.data];

          final List<int> ids = timetables.map((e) => e.id).toList();

          final bool isUpdate = e.type == SocketResponseType.update;

          if (!isUpdate) {
            timetables = [];
          }

          for (final TimetableEntity table in state.timetables) {
            if (!ids.contains(table.id)) {
              timetables.add(table);
            }
          }

          _state = _state.copyWith(timetables: timetables);
          emit(_state);
        });
      },
    );
  }

  Future<void> onLogout() => disconnectSocketUseCase(NoParams());
}
