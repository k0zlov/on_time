// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_member_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateMemberParamsImpl _$$UpdateMemberParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMemberParamsImpl(
      memberId: (json['memberId'] as num).toInt(),
      role: json['role'] as String,
      timetableId: (json['timetableId'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateMemberParamsImplToJson(
        _$UpdateMemberParamsImpl instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'role': instance.role,
      'timetableId': instance.timetableId,
    };
