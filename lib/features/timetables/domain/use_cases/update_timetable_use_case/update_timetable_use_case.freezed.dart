// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_timetable_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTimetableParams _$UpdateTimetableParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateTimetableParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateTimetableParams {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get startTime => throw _privateConstructorUsedError;
  int? get endTime => throw _privateConstructorUsedError;

  /// Serializes this UpdateTimetableParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTimetableParamsCopyWith<UpdateTimetableParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTimetableParamsCopyWith<$Res> {
  factory $UpdateTimetableParamsCopyWith(UpdateTimetableParams value,
          $Res Function(UpdateTimetableParams) then) =
      _$UpdateTimetableParamsCopyWithImpl<$Res, UpdateTimetableParams>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? startTime,
      int? endTime});
}

/// @nodoc
class _$UpdateTimetableParamsCopyWithImpl<$Res,
        $Val extends UpdateTimetableParams>
    implements $UpdateTimetableParamsCopyWith<$Res> {
  _$UpdateTimetableParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
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
abstract class _$$UpdateTimetableParamsImplCopyWith<$Res>
    implements $UpdateTimetableParamsCopyWith<$Res> {
  factory _$$UpdateTimetableParamsImplCopyWith(
          _$UpdateTimetableParamsImpl value,
          $Res Function(_$UpdateTimetableParamsImpl) then) =
      __$$UpdateTimetableParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? startTime,
      int? endTime});
}

/// @nodoc
class __$$UpdateTimetableParamsImplCopyWithImpl<$Res>
    extends _$UpdateTimetableParamsCopyWithImpl<$Res,
        _$UpdateTimetableParamsImpl>
    implements _$$UpdateTimetableParamsImplCopyWith<$Res> {
  __$$UpdateTimetableParamsImplCopyWithImpl(_$UpdateTimetableParamsImpl _value,
      $Res Function(_$UpdateTimetableParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$UpdateTimetableParamsImpl(
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
class _$UpdateTimetableParamsImpl extends _UpdateTimetableParams {
  const _$UpdateTimetableParamsImpl(
      {this.id = -1,
      this.title,
      this.description,
      this.startTime,
      this.endTime})
      : super._();

  factory _$UpdateTimetableParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTimetableParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? startTime;
  @override
  final int? endTime;

  @override
  String toString() {
    return 'UpdateTimetableParams(id: $id, title: $title, description: $description, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimetableParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, startTime, endTime);

  /// Create a copy of UpdateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimetableParamsImplCopyWith<_$UpdateTimetableParamsImpl>
      get copyWith => __$$UpdateTimetableParamsImplCopyWithImpl<
          _$UpdateTimetableParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTimetableParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateTimetableParams extends UpdateTimetableParams {
  const factory _UpdateTimetableParams(
      {final int id,
      final String? title,
      final String? description,
      final int? startTime,
      final int? endTime}) = _$UpdateTimetableParamsImpl;
  const _UpdateTimetableParams._() : super._();

  factory _UpdateTimetableParams.fromJson(Map<String, dynamic> json) =
      _$UpdateTimetableParamsImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get startTime;
  @override
  int? get endTime;

  /// Create a copy of UpdateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTimetableParamsImplCopyWith<_$UpdateTimetableParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
