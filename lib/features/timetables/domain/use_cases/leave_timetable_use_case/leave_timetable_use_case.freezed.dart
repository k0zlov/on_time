// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_timetable_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveTimetableParams _$LeaveTimetableParamsFromJson(Map<String, dynamic> json) {
  return _LeaveTimetableParams.fromJson(json);
}

/// @nodoc
mixin _$LeaveTimetableParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this LeaveTimetableParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveTimetableParamsCopyWith<LeaveTimetableParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveTimetableParamsCopyWith<$Res> {
  factory $LeaveTimetableParamsCopyWith(LeaveTimetableParams value,
          $Res Function(LeaveTimetableParams) then) =
      _$LeaveTimetableParamsCopyWithImpl<$Res, LeaveTimetableParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$LeaveTimetableParamsCopyWithImpl<$Res,
        $Val extends LeaveTimetableParams>
    implements $LeaveTimetableParamsCopyWith<$Res> {
  _$LeaveTimetableParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveTimetableParamsImplCopyWith<$Res>
    implements $LeaveTimetableParamsCopyWith<$Res> {
  factory _$$LeaveTimetableParamsImplCopyWith(_$LeaveTimetableParamsImpl value,
          $Res Function(_$LeaveTimetableParamsImpl) then) =
      __$$LeaveTimetableParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LeaveTimetableParamsImplCopyWithImpl<$Res>
    extends _$LeaveTimetableParamsCopyWithImpl<$Res, _$LeaveTimetableParamsImpl>
    implements _$$LeaveTimetableParamsImplCopyWith<$Res> {
  __$$LeaveTimetableParamsImplCopyWithImpl(_$LeaveTimetableParamsImpl _value,
      $Res Function(_$LeaveTimetableParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LeaveTimetableParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveTimetableParamsImpl extends _LeaveTimetableParams {
  const _$LeaveTimetableParamsImpl({required this.id}) : super._();

  factory _$LeaveTimetableParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveTimetableParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'LeaveTimetableParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveTimetableParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of LeaveTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveTimetableParamsImplCopyWith<_$LeaveTimetableParamsImpl>
      get copyWith =>
          __$$LeaveTimetableParamsImplCopyWithImpl<_$LeaveTimetableParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveTimetableParamsImplToJson(
      this,
    );
  }
}

abstract class _LeaveTimetableParams extends LeaveTimetableParams {
  const factory _LeaveTimetableParams({required final int id}) =
      _$LeaveTimetableParamsImpl;
  const _LeaveTimetableParams._() : super._();

  factory _LeaveTimetableParams.fromJson(Map<String, dynamic> json) =
      _$LeaveTimetableParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of LeaveTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveTimetableParamsImplCopyWith<_$LeaveTimetableParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
