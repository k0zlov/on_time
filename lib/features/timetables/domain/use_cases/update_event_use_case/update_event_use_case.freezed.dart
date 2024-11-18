// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_event_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateEventParams _$UpdateEventParamsFromJson(Map<String, dynamic> json) {
  return _UpdateEventParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateEventParams {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get day => throw _privateConstructorUsedError;
  int? get startTime => throw _privateConstructorUsedError;
  int? get endTime => throw _privateConstructorUsedError;

  /// Serializes this UpdateEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateEventParamsCopyWith<UpdateEventParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEventParamsCopyWith<$Res> {
  factory $UpdateEventParamsCopyWith(
          UpdateEventParams value, $Res Function(UpdateEventParams) then) =
      _$UpdateEventParamsCopyWithImpl<$Res, UpdateEventParams>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? day,
      int? startTime,
      int? endTime});
}

/// @nodoc
class _$UpdateEventParamsCopyWithImpl<$Res, $Val extends UpdateEventParams>
    implements $UpdateEventParamsCopyWith<$Res> {
  _$UpdateEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEventParamsImplCopyWith<$Res>
    implements $UpdateEventParamsCopyWith<$Res> {
  factory _$$UpdateEventParamsImplCopyWith(_$UpdateEventParamsImpl value,
          $Res Function(_$UpdateEventParamsImpl) then) =
      __$$UpdateEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? day,
      int? startTime,
      int? endTime});
}

/// @nodoc
class __$$UpdateEventParamsImplCopyWithImpl<$Res>
    extends _$UpdateEventParamsCopyWithImpl<$Res, _$UpdateEventParamsImpl>
    implements _$$UpdateEventParamsImplCopyWith<$Res> {
  __$$UpdateEventParamsImplCopyWithImpl(_$UpdateEventParamsImpl _value,
      $Res Function(_$UpdateEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$UpdateEventParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateEventParamsImpl extends _UpdateEventParams {
  const _$UpdateEventParamsImpl(
      {required this.id,
      this.title,
      this.description,
      this.day,
      this.startTime,
      this.endTime})
      : super._();

  factory _$UpdateEventParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEventParamsImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? day;
  @override
  final int? startTime;
  @override
  final int? endTime;

  @override
  String toString() {
    return 'UpdateEventParams(id: $id, title: $title, description: $description, day: $day, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, day, startTime, endTime);

  /// Create a copy of UpdateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventParamsImplCopyWith<_$UpdateEventParamsImpl> get copyWith =>
      __$$UpdateEventParamsImplCopyWithImpl<_$UpdateEventParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEventParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateEventParams extends UpdateEventParams {
  const factory _UpdateEventParams(
      {required final int id,
      final String? title,
      final String? description,
      final int? day,
      final int? startTime,
      final int? endTime}) = _$UpdateEventParamsImpl;
  const _UpdateEventParams._() : super._();

  factory _UpdateEventParams.fromJson(Map<String, dynamic> json) =
      _$UpdateEventParamsImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get day;
  @override
  int? get startTime;
  @override
  int? get endTime;

  /// Create a copy of UpdateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEventParamsImplCopyWith<_$UpdateEventParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
