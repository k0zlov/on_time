import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/domain/entities/event_entity/event_entity.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';

part 'timetable_entity.freezed.dart';

@freezed
class TimetableEntity with _$TimetableEntity {
  const factory TimetableEntity({
    required DateTime startTime,
    required DateTime endTime,
    @Default(-1) int id,
    @Default('') String title,
    String? description,
    @Default('') String invitationCode,
    @Default([]) List<EventEntity> events,
    @Default([]) List<MemberEntity> members,
  }) = _TimetableEntity;

  const TimetableEntity._();
}
