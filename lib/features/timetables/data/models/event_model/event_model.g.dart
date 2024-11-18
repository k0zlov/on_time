// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      day: (json['day'] as num).toInt(),
      startTime: (json['startTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
      externalId: (json['id'] as num?)?.toInt() ?? -1,
      timetableId: (json['timetableId'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      hosts: (json['hosts'] as List<dynamic>?)
              ?.map((e) => EventHostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'id': instance.externalId,
      'timetableId': instance.timetableId,
      'title': instance.title,
      'description': instance.description,
      'hosts': instance.hosts,
    };
