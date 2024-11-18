// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_event_host_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddEventHostParamsImpl _$$AddEventHostParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEventHostParamsImpl(
      eventId: (json['eventId'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
    );

Map<String, dynamic> _$$AddEventHostParamsImplToJson(
        _$AddEventHostParamsImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'memberId': instance.memberId,
    };
