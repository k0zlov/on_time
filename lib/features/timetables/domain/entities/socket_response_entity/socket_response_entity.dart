import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';

part 'socket_response_entity.freezed.dart';

enum SocketResponseType {
  update,
  delete,
}

@freezed
class SocketResponseEntity with _$SocketResponseEntity {
  const factory SocketResponseEntity({
    @Default(SocketResponseType.update) SocketResponseType type,
    @Default([]) List<TimetableEntity> data,
  }) = _SocketResponseEntity;

  const SocketResponseEntity._();
}
