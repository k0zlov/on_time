import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/data/models/event_host_model/event_host_model.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class MemberModel with _$MemberModel {
  const factory MemberModel({
    @JsonKey(name: 'id') @Default(-1) int externalId,
    @Default(-1) int userId,
    @Default(-1) int timetableId,
    @Default('') String name,
    @Default('') String lastName,
    @Default(MemberRole.member) MemberRole role,
    @Default([]) List<EventHostModel> hosts,
  }) = _MemberModel;

  const MemberModel._();

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);

  MemberEntity toEntity() => MemberEntity(
    id: externalId,
    userId: userId,
    timetableId: timetableId,
    name: name,
    lastName: lastName,
    role: role,
    hosts: [...hosts.map((h) => h.toEntity())],
  );
}
