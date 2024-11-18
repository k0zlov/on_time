// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_event_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateEventParamsImpl _$$UpdateEventParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEventParamsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      day: (json['day'] as num?)?.toInt(),
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateEventParamsImplToJson(
        _$UpdateEventParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
