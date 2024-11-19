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

InvitationParams _$InvitationParamsFromJson(Map<String, dynamic> json) {
  return _InvitationParams.fromJson(json);
}

/// @nodoc
mixin _$InvitationParams {
  String get code => throw _privateConstructorUsedError;

  /// Serializes this InvitationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvitationParamsCopyWith<InvitationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationParamsCopyWith<$Res> {
  factory $InvitationParamsCopyWith(
          InvitationParams value, $Res Function(InvitationParams) then) =
      _$InvitationParamsCopyWithImpl<$Res, InvitationParams>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$InvitationParamsCopyWithImpl<$Res, $Val extends InvitationParams>
    implements $InvitationParamsCopyWith<$Res> {
  _$InvitationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvitationParamsImplCopyWith<$Res>
    implements $InvitationParamsCopyWith<$Res> {
  factory _$$InvitationParamsImplCopyWith(_$InvitationParamsImpl value,
          $Res Function(_$InvitationParamsImpl) then) =
      __$$InvitationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$InvitationParamsImplCopyWithImpl<$Res>
    extends _$InvitationParamsCopyWithImpl<$Res, _$InvitationParamsImpl>
    implements _$$InvitationParamsImplCopyWith<$Res> {
  __$$InvitationParamsImplCopyWithImpl(_$InvitationParamsImpl _value,
      $Res Function(_$InvitationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$InvitationParamsImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvitationParamsImpl extends _InvitationParams {
  const _$InvitationParamsImpl({this.code = ''}) : super._();

  factory _$InvitationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvitationParamsImplFromJson(json);

  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'InvitationParams(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationParamsImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of InvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationParamsImplCopyWith<_$InvitationParamsImpl> get copyWith =>
      __$$InvitationParamsImplCopyWithImpl<_$InvitationParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvitationParamsImplToJson(
      this,
    );
  }
}

abstract class _InvitationParams extends InvitationParams {
  const factory _InvitationParams({final String code}) = _$InvitationParamsImpl;
  const _InvitationParams._() : super._();

  factory _InvitationParams.fromJson(Map<String, dynamic> json) =
      _$InvitationParamsImpl.fromJson;

  @override
  String get code;

  /// Create a copy of InvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvitationParamsImplCopyWith<_$InvitationParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
