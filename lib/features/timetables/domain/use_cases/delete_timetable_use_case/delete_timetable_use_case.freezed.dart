// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_timetable_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTimetableParams _$DeleteTimetableParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteTimetableParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteTimetableParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this DeleteTimetableParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTimetableParamsCopyWith<DeleteTimetableParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTimetableParamsCopyWith<$Res> {
  factory $DeleteTimetableParamsCopyWith(DeleteTimetableParams value,
          $Res Function(DeleteTimetableParams) then) =
      _$DeleteTimetableParamsCopyWithImpl<$Res, DeleteTimetableParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteTimetableParamsCopyWithImpl<$Res,
        $Val extends DeleteTimetableParams>
    implements $DeleteTimetableParamsCopyWith<$Res> {
  _$DeleteTimetableParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTimetableParams
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
abstract class _$$DeleteTimetableParamsImplCopyWith<$Res>
    implements $DeleteTimetableParamsCopyWith<$Res> {
  factory _$$DeleteTimetableParamsImplCopyWith(
          _$DeleteTimetableParamsImpl value,
          $Res Function(_$DeleteTimetableParamsImpl) then) =
      __$$DeleteTimetableParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTimetableParamsImplCopyWithImpl<$Res>
    extends _$DeleteTimetableParamsCopyWithImpl<$Res,
        _$DeleteTimetableParamsImpl>
    implements _$$DeleteTimetableParamsImplCopyWith<$Res> {
  __$$DeleteTimetableParamsImplCopyWithImpl(_$DeleteTimetableParamsImpl _value,
      $Res Function(_$DeleteTimetableParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTimetableParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTimetableParamsImpl extends _DeleteTimetableParams {
  const _$DeleteTimetableParamsImpl({required this.id}) : super._();

  factory _$DeleteTimetableParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTimetableParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteTimetableParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTimetableParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTimetableParamsImplCopyWith<_$DeleteTimetableParamsImpl>
      get copyWith => __$$DeleteTimetableParamsImplCopyWithImpl<
          _$DeleteTimetableParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTimetableParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteTimetableParams extends DeleteTimetableParams {
  const factory _DeleteTimetableParams({required final int id}) =
      _$DeleteTimetableParamsImpl;
  const _DeleteTimetableParams._() : super._();

  factory _DeleteTimetableParams.fromJson(Map<String, dynamic> json) =
      _$DeleteTimetableParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of DeleteTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTimetableParamsImplCopyWith<_$DeleteTimetableParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
