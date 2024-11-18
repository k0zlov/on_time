// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableModelImpl _$$TimetableModelImplFromJson(Map<String, dynamic> json) =>
    _$TimetableModelImpl(
      startTime: (json['startTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
      externalId: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      description: json['description'] as String?,
      invitationCode: json['invitationCode'] as String? ?? '',
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TimetableModelImplToJson(
        _$TimetableModelImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'id': instance.externalId,
      'title': instance.title,
      'description': instance.description,
      'invitationCode': instance.invitationCode,
      'events': instance.events,
      'members': instance.members,
    };
