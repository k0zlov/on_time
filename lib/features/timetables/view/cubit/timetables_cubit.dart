import 'package:bloc/bloc.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/connect_socket_use_case/connect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/disconnect_socket_use_case/disconnect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/invitation_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_member_use_case/update_member_use_case.dart';
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
    required this.invitationUseCase,
    required this.updateMemberUseCase,
  }) : super(const TimetablesState());

  final UpdateMemberUseCase updateMemberUseCase;
  final InvitationUseCase invitationUseCase;
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
          for (final m in state.timetables) {
            print(m);
          }
        });
      },
    );
  }

  void onLogout() {
    disconnectSocketUseCase(NoParams());
    _state = const TimetablesState();
    emit(_state);
  }

  Future<void> onCreateTimetable() async {
    final failureOrTimetable = await createTimetableUseCase(
      _state.createParams,
    );

    failureOrTimetable.fold(
      (failure) {},
      (timetable) {
        _state = _state.copyWith(
          timetables: [..._state.timetables, timetable],
        );
        emit(_state);
      },
    );
  }

  Future<void> onCreateEvent(int timetableId) async {
    _state = _state.copyWith(
      createEventParams: _state.createEventParams.copyWith(
        timetableId: timetableId,
      ),
    );

    final failureOrSuccess = await createEventUseCase(
      _state.createEventParams,
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onLeaveTimetable(int timetableId) async {
    final failureOrSuccess = await leaveTimetableUseCase(
      LeaveTimetableParams(id: timetableId),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onUpdateTimetable(int timetableId) async {
    _state = _state.copyWith(
      updateTimetableParams: _state.updateTimetableParams.copyWith(
        id: timetableId,
      ),
    );

    final failureOrSuccess = await updateTimetableUseCase(
      _state.updateTimetableParams,
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onDeleteEvent(int eventId) async {
    final failureOrSuccess = await deleteEventUseCase(
      DeleteEventParams(id: eventId),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onAddHost(int eventId, int memberId) async {
    final failureOrSuccess = await addEventHostUseCase(
      AddEventHostParams(eventId: eventId, memberId: memberId),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onRemoveHost(int hostId) async {
    final failureOrSuccess = await removeEventHostUseCase(
      RemoveEventHostParams(id: hostId),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onInvitation(String code) async {
    final failureOrSuccess = await invitationUseCase(
      InvitationParams(code: code),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  Future<void> onUpdateMember(
    int memberId,
    int timetableId,
    MemberRole role,
  ) async {
    final failureOrSuccess = await updateMemberUseCase(
      UpdateMemberParams(
        memberId: memberId,
        role: role.name,
        timetableId: timetableId,
      ),
    );

    failureOrSuccess.fold(
      (failure) {},
      (_) {},
    );
  }

  void onCreateTitleChanged(String text) {
    if (text == _state.createParams.title) return;

    _state = _state.copyWith(
      createParams: _state.createParams.copyWith(title: text),
    );

    emit(_state);
  }

  void onCreateStartTimeChanged(int startTime) {
    if (startTime == _state.createParams.startTime) return;

    _state = _state.copyWith(
      createParams: _state.createParams.copyWith(startTime: startTime),
    );

    emit(_state);
  }

  void onCreateEndTimeChanged(int endTime) {
    if (endTime == _state.createParams.endTime) return;

    _state = _state.copyWith(
      createParams: _state.createParams.copyWith(endTime: endTime),
    );

    emit(_state);
  }

  void onCreateDescriptionChanged(String? description) {
    if (description == _state.createParams.description) return;

    _state = _state.copyWith(
      createParams: _state.createParams.copyWith(description: description),
    );

    emit(_state);
  }

  void onCreateEventTitleChanged(String title) {
    if (title == _state.createEventParams.title) return;

    _state = _state.copyWith(
      createEventParams: _state.createEventParams.copyWith(title: title),
    );

    emit(_state);
  }

  void onCreateEventDayChanged(int day) {
    if (day == _state.createEventParams.day) return;

    _state = _state.copyWith(
      createEventParams: _state.createEventParams.copyWith(day: day),
    );

    emit(_state);
  }

  void onCreateEventStartTimeChanged(int startTime) {
    if (startTime == _state.createEventParams.startTime) return;

    _state = _state.copyWith(
      createEventParams:
          _state.createEventParams.copyWith(startTime: startTime),
    );

    emit(_state);
  }

  void onCreateEventEndTimeChanged(int endTime) {
    if (endTime == _state.createEventParams.endTime) return;

    _state = _state.copyWith(
      createEventParams: _state.createEventParams.copyWith(endTime: endTime),
    );

    emit(_state);
  }

  void onCreateEventDescriptionChanged(String? description) {
    if (description == _state.createEventParams.description) return;

    _state = _state.copyWith(
      createEventParams:
          _state.createEventParams.copyWith(description: description),
    );

    emit(_state);
  }

  void onUpdateTimetableTitleChanged(String title) {
    _state = _state.copyWith(
      updateTimetableParams:
          _state.updateTimetableParams.copyWith(title: title),
    );
    emit(_state);
  }

  void onUpdateTimetableDescriptionChanged(String description) {
    _state = _state.copyWith(
      updateTimetableParams:
          _state.updateTimetableParams.copyWith(description: description),
    );
    emit(_state);
  }

  void onUpdateTimetableStartTimeChanged(int startTime) {
    _state = _state.copyWith(
      updateTimetableParams:
          _state.updateTimetableParams.copyWith(startTime: startTime),
    );
    emit(_state);
  }

  void onUpdateTimetableEndTimeChanged(int endTime) {
    _state = _state.copyWith(
      updateTimetableParams:
          _state.updateTimetableParams.copyWith(endTime: endTime),
    );
    emit(_state);
  }
}
