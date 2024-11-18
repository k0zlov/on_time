// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_event_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteEventParams _$DeleteEventParamsFromJson(Map<String, dynamic> json) {
  return _DeleteEventParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteEventParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this DeleteEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteEventParamsCopyWith<DeleteEventParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEventParamsCopyWith<$Res> {
  factory $DeleteEventParamsCopyWith(
          DeleteEventParams value, $Res Function(DeleteEventParams) then) =
      _$DeleteEventParamsCopyWithImpl<$Res, DeleteEventParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteEventParamsCopyWithImpl<$Res, $Val extends DeleteEventParams>
    implements $DeleteEventParamsCopyWith<$Res> {
  _$DeleteEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteEventParams
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
abstract class _$$DeleteEventParamsImplCopyWith<$Res>
    implements $DeleteEventParamsCopyWith<$Res> {
  factory _$$DeleteEventParamsImplCopyWith(_$DeleteEventParamsImpl value,
          $Res Function(_$DeleteEventParamsImpl) then) =
      __$$DeleteEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteEventParamsImplCopyWithImpl<$Res>
    extends _$DeleteEventParamsCopyWithImpl<$Res, _$DeleteEventParamsImpl>
    implements _$$DeleteEventParamsImplCopyWith<$Res> {
  __$$DeleteEventParamsImplCopyWithImpl(_$DeleteEventParamsImpl _value,
      $Res Function(_$DeleteEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteEventParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteEventParamsImpl extends _DeleteEventParams {
  const _$DeleteEventParamsImpl({required this.id}) : super._();

  factory _$DeleteEventParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteEventParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteEventParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventParamsImplCopyWith<_$DeleteEventParamsImpl> get copyWith =>
      __$$DeleteEventParamsImplCopyWithImpl<_$DeleteEventParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteEventParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteEventParams extends DeleteEventParams {
  const factory _DeleteEventParams({required final int id}) =
      _$DeleteEventParamsImpl;
  const _DeleteEventParams._() : super._();

  factory _DeleteEventParams.fromJson(Map<String, dynamic> json) =
      _$DeleteEventParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of DeleteEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventParamsImplCopyWith<_$DeleteEventParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
