// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_timetable_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTimetableParamsImpl _$$CreateTimetableParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTimetableParamsImpl(
      title: json['title'] as String? ?? '',
      startTime: (json['startTime'] as num?)?.toInt() ?? 1,
      endTime: (json['endTime'] as num?)?.toInt() ?? 2,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateTimetableParamsImplToJson(
        _$CreateTimetableParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'description': instance.description,
    };
