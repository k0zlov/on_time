// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_member_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateMemberParams _$UpdateMemberParamsFromJson(Map<String, dynamic> json) {
  return _UpdateMemberParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateMemberParams {
  int get memberId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;

  /// Serializes this UpdateMemberParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMemberParamsCopyWith<UpdateMemberParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMemberParamsCopyWith<$Res> {
  factory $UpdateMemberParamsCopyWith(
          UpdateMemberParams value, $Res Function(UpdateMemberParams) then) =
      _$UpdateMemberParamsCopyWithImpl<$Res, UpdateMemberParams>;
  @useResult
  $Res call({int memberId, String role, int timetableId});
}

/// @nodoc
class _$UpdateMemberParamsCopyWithImpl<$Res, $Val extends UpdateMemberParams>
    implements $UpdateMemberParamsCopyWith<$Res> {
  _$UpdateMemberParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? role = null,
    Object? timetableId = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMemberParamsImplCopyWith<$Res>
    implements $UpdateMemberParamsCopyWith<$Res> {
  factory _$$UpdateMemberParamsImplCopyWith(_$UpdateMemberParamsImpl value,
          $Res Function(_$UpdateMemberParamsImpl) then) =
      __$$UpdateMemberParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int memberId, String role, int timetableId});
}

/// @nodoc
class __$$UpdateMemberParamsImplCopyWithImpl<$Res>
    extends _$UpdateMemberParamsCopyWithImpl<$Res, _$UpdateMemberParamsImpl>
    implements _$$UpdateMemberParamsImplCopyWith<$Res> {
  __$$UpdateMemberParamsImplCopyWithImpl(_$UpdateMemberParamsImpl _value,
      $Res Function(_$UpdateMemberParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? role = null,
    Object? timetableId = null,
  }) {
    return _then(_$UpdateMemberParamsImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMemberParamsImpl extends _UpdateMemberParams {
  const _$UpdateMemberParamsImpl(
      {required this.memberId, required this.role, required this.timetableId})
      : super._();

  factory _$UpdateMemberParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateMemberParamsImplFromJson(json);

  @override
  final int memberId;
  @override
  final String role;
  @override
  final int timetableId;

  @override
  String toString() {
    return 'UpdateMemberParams(memberId: $memberId, role: $role, timetableId: $timetableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemberParamsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, role, timetableId);

  /// Create a copy of UpdateMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemberParamsImplCopyWith<_$UpdateMemberParamsImpl> get copyWith =>
      __$$UpdateMemberParamsImplCopyWithImpl<_$UpdateMemberParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMemberParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateMemberParams extends UpdateMemberParams {
  const factory _UpdateMemberParams(
      {required final int memberId,
      required final String role,
      required final int timetableId}) = _$UpdateMemberParamsImpl;
  const _UpdateMemberParams._() : super._();

  factory _UpdateMemberParams.fromJson(Map<String, dynamic> json) =
      _$UpdateMemberParamsImpl.fromJson;

  @override
  int get memberId;
  @override
  String get role;
  @override
  int get timetableId;

  /// Create a copy of UpdateMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemberParamsImplCopyWith<_$UpdateMemberParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
