// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketResponseModelImpl _$$SocketResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketResponseModelImpl(
      type: json['eventType'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TimetableModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SocketResponseModelImplToJson(
        _$SocketResponseModelImpl instance) =>
    <String, dynamic>{
      'eventType': instance.type,
      'data': instance.data,
    };
