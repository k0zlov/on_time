import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/domain/entities/event_host_entity/event_host_entity.dart';

part 'member_entity.freezed.dart';

enum MemberRole {
  owner,
  admin,
  member;

  bool get isOwner => this == owner;

  bool get isAdmin => this == owner || this == admin;

  bool get isMember => this == member;
}

@freezed
class MemberEntity with _$MemberEntity {
  const factory MemberEntity({
    @Default(-1) int id,
    @Default(-1) int userId,
    @Default(-1) int timetableId,
    @Default('') String name,
    @Default('') String lastName,
    @Default(MemberRole.member) MemberRole role,
    @Default([]) List<EventHostEntity> hosts,
  }) = _MemberEntity;

  const MemberEntity._();
}
