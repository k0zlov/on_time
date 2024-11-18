// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_timetable_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTimetableParamsImpl _$$UpdateTimetableParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTimetableParamsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateTimetableParamsImplToJson(
        _$UpdateTimetableParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
