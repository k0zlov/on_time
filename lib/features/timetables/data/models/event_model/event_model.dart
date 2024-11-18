import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/data/models/event_host_model/event_host_model.dart';
import 'package:on_time/features/timetables/domain/entities/event_entity/event_entity.dart';
import 'package:on_time/util/date_time_extension.dart';

part 'event_model.freezed.dart';

part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required int day,
    required int startTime,
    required int endTime,
    @JsonKey(name: 'id') @Default(-1) int externalId,
    @Default(-1) int timetableId,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<EventHostModel> hosts,
  }) = _EventModel;

  const EventModel._();

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  EventEntity toEntity() => EventEntity(
        day: day,
        startTime: DateTimeExtension.fromSecondsSinceMidnight(startTime),
        endTime: DateTimeExtension.fromSecondsSinceMidnight(endTime),
        id: externalId,
        timetableId: timetableId,
        title: title,
        description: description,
        hosts: [...hosts.map((e) => e.toEntity())],
      );
}
