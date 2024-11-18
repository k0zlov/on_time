// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_event_host_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveEventHostParams _$RemoveEventHostParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveEventHostParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveEventHostParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this RemoveEventHostParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveEventHostParamsCopyWith<RemoveEventHostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveEventHostParamsCopyWith<$Res> {
  factory $RemoveEventHostParamsCopyWith(RemoveEventHostParams value,
          $Res Function(RemoveEventHostParams) then) =
      _$RemoveEventHostParamsCopyWithImpl<$Res, RemoveEventHostParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$RemoveEventHostParamsCopyWithImpl<$Res,
        $Val extends RemoveEventHostParams>
    implements $RemoveEventHostParamsCopyWith<$Res> {
  _$RemoveEventHostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveEventHostParams
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
abstract class _$$RemoveEventHostParamsImplCopyWith<$Res>
    implements $RemoveEventHostParamsCopyWith<$Res> {
  factory _$$RemoveEventHostParamsImplCopyWith(
          _$RemoveEventHostParamsImpl value,
          $Res Function(_$RemoveEventHostParamsImpl) then) =
      __$$RemoveEventHostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveEventHostParamsImplCopyWithImpl<$Res>
    extends _$RemoveEventHostParamsCopyWithImpl<$Res,
        _$RemoveEventHostParamsImpl>
    implements _$$RemoveEventHostParamsImplCopyWith<$Res> {
  __$$RemoveEventHostParamsImplCopyWithImpl(_$RemoveEventHostParamsImpl _value,
      $Res Function(_$RemoveEventHostParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveEventHostParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveEventHostParamsImpl extends _RemoveEventHostParams {
  const _$RemoveEventHostParamsImpl({required this.id}) : super._();

  factory _$RemoveEventHostParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveEventHostParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'RemoveEventHostParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveEventHostParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RemoveEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveEventHostParamsImplCopyWith<_$RemoveEventHostParamsImpl>
      get copyWith => __$$RemoveEventHostParamsImplCopyWithImpl<
          _$RemoveEventHostParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveEventHostParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveEventHostParams extends RemoveEventHostParams {
  const factory _RemoveEventHostParams({required final int id}) =
      _$RemoveEventHostParamsImpl;
  const _RemoveEventHostParams._() : super._();

  factory _RemoveEventHostParams.fromJson(Map<String, dynamic> json) =
      _$RemoveEventHostParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of RemoveEventHostParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveEventHostParamsImplCopyWith<_$RemoveEventHostParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
