// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_host_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventHostModelImpl _$$EventHostModelImplFromJson(Map<String, dynamic> json) =>
    _$EventHostModelImpl(
      externalId: (json['id'] as num?)?.toInt() ?? -1,
      eventId: (json['eventId'] as num?)?.toInt() ?? -1,
      memberId: (json['memberId'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$EventHostModelImplToJson(
        _$EventHostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.externalId,
      'eventId': instance.eventId,
      'memberId': instance.memberId,
    };
