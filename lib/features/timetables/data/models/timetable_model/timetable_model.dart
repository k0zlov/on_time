import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/data/models/event_model/event_model.dart';
import 'package:on_time/features/timetables/data/models/member_model/member_model.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/util/date_time_extension.dart';

part 'timetable_model.freezed.dart';

part 'timetable_model.g.dart';

@freezed
class TimetableModel with _$TimetableModel {
  const factory TimetableModel({
    required int startTime,
    required int endTime,
    @JsonKey(name: 'id') @Default(-1) int externalId,
    @Default('') String title,
    String? description,
    @Default('') String invitationCode,
    @Default([]) List<EventModel> events,
    @Default([]) List<MemberModel> members,
  }) = _TimetableModel;

  const TimetableModel._();

  factory TimetableModel.fromJson(Map<String, dynamic> json) =>
      _$TimetableModelFromJson(json);

  TimetableEntity toEntity() => TimetableEntity(
        startTime: DateTimeExtension.fromSecondsSinceMidnight(startTime),
        endTime: DateTimeExtension.fromSecondsSinceMidnight(endTime),
        id: externalId,
        title: title,
        description: description,
        invitationCode: invitationCode,
        events: [...events.map((e) => e.toEntity())],
        members: [...members.map((m) => m.toEntity())],
      );
}
