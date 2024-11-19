// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_event_host_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddEventHostParams _$AddEventHostParamsFromJson(Map<String, dynamic> json) {
  return _AddEventHostParams.fromJson(json);
}

/// @nodoc
mixin _$AddEventHostParams {
  int get eventId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  /// Serializes this AddEventHostParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddEventHostParamsCopyWith<AddEventHostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEventHostParamsCopyWith<$Res> {
  factory $AddEventHostParamsCopyWith(
          AddEventHostParams value, $Res Function(AddEventHostParams) then) =
      _$AddEventHostParamsCopyWithImpl<$Res, AddEventHostParams>;
  @useResult
  $Res call({int eventId, int memberId});
}

/// @nodoc
class _$AddEventHostParamsCopyWithImpl<$Res, $Val extends AddEventHostParams>
    implements $AddEventHostParamsCopyWith<$Res> {
  _$AddEventHostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddEventHostParamsImplCopyWith<$Res>
    implements $AddEventHostParamsCopyWith<$Res> {
  factory _$$AddEventHostParamsImplCopyWith(_$AddEventHostParamsImpl value,
          $Res Function(_$AddEventHostParamsImpl) then) =
      __$$AddEventHostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId, int memberId});
}

/// @nodoc
class __$$AddEventHostParamsImplCopyWithImpl<$Res>
    extends _$AddEventHostParamsCopyWithImpl<$Res, _$AddEventHostParamsImpl>
    implements _$$AddEventHostParamsImplCopyWith<$Res> {
  __$$AddEventHostParamsImplCopyWithImpl(_$AddEventHostParamsImpl _value,
      $Res Function(_$AddEventHostParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_$AddEventHostParamsImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddEventHostParamsImpl extends _AddEventHostParams {
  const _$AddEventHostParamsImpl(
      {required this.eventId, required this.memberId})
      : super._();

  factory _$AddEventHostParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddEventHostParamsImplFromJson(json);

  @override
  final int eventId;
  @override
  final int memberId;

  @override
  String toString() {
    return 'AddEventHostParams(eventId: $eventId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventHostParamsImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, memberId);

  /// Create a copy of AddEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventHostParamsImplCopyWith<_$AddEventHostParamsImpl> get copyWith =>
      __$$AddEventHostParamsImplCopyWithImpl<_$AddEventHostParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddEventHostParamsImplToJson(
      this,
    );
  }
}

abstract class _AddEventHostParams extends AddEventHostParams {
  const factory _AddEventHostParams(
      {required final int eventId,
      required final int memberId}) = _$AddEventHostParamsImpl;
  const _AddEventHostParams._() : super._();

  factory _AddEventHostParams.fromJson(Map<String, dynamic> json) =
      _$AddEventHostParamsImpl.fromJson;

  @override
  int get eventId;
  @override
  int get memberId;

  /// Create a copy of AddEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEventHostParamsImplCopyWith<_$AddEventHostParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}