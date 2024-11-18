// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEventParamsImpl _$$CreateEventParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEventParamsImpl(
      title: json['title'] as String,
      timetableId: (json['timetableId'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      startTime: (json['startTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
      hosts: (json['hosts'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateEventParamsImplToJson(
        _$CreateEventParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timetableId': instance.timetableId,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'hosts': instance.hosts,
      'description': instance.description,
    };
