// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberModelImpl _$$MemberModelImplFromJson(Map<String, dynamic> json) =>
    _$MemberModelImpl(
      externalId: (json['id'] as num?)?.toInt() ?? -1,
      userId: (json['userId'] as num?)?.toInt() ?? -1,
      timetableId: (json['timetableId'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      role: $enumDecodeNullable(_$MemberRoleEnumMap, json['role']) ??
          MemberRole.member,
      hosts: (json['hosts'] as List<dynamic>?)
              ?.map((e) => EventHostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MemberModelImplToJson(_$MemberModelImpl instance) =>
    <String, dynamic>{
      'id': instance.externalId,
      'userId': instance.userId,
      'timetableId': instance.timetableId,
      'name': instance.name,
      'lastName': instance.lastName,
      'role': _$MemberRoleEnumMap[instance.role]!,
      'hosts': instance.hosts,
    };

const _$MemberRoleEnumMap = {
  MemberRole.owner: 'owner',
  MemberRole.admin: 'admin',
  MemberRole.member: 'member',
};
