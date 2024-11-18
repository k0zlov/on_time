import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/domain/entities/event_host_entity/event_host_entity.dart';

part 'event_entity.freezed.dart';

@freezed
class EventEntity with _$EventEntity {
  const factory EventEntity({
    required int day,
    required DateTime startTime,
    required DateTime endTime,
    @Default(-1) int id,
    @Default(-1) int timetableId,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<EventHostEntity> hosts,
  }) = _EventEntity;

  const EventEntity._();
}
