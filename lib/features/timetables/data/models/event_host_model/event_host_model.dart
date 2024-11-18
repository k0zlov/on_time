import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/domain/entities/event_host_entity/event_host_entity.dart';

part 'event_host_model.freezed.dart';

part 'event_host_model.g.dart';

@freezed
class EventHostModel with _$EventHostModel {
  const factory EventHostModel({
    @JsonKey(name: 'id') @Default(-1) int externalId,
    @Default(-1) int eventId,
    @Default(-1) int memberId,
  }) = _EventHostModel;

  const EventHostModel._();

  factory EventHostModel.fromJson(Map<String, dynamic> json) =>
      _$EventHostModelFromJson(json);

  EventHostEntity toEntity() => EventHostEntity(
        id: externalId,
        eventId: eventId,
        memberId: memberId,
      );
}
