// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_timetable_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTimetableParams _$CreateTimetableParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateTimetableParams.fromJson(json);
}

/// @nodoc
mixin _$CreateTimetableParams {
  String get title => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CreateTimetableParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTimetableParamsCopyWith<CreateTimetableParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTimetableParamsCopyWith<$Res> {
  factory $CreateTimetableParamsCopyWith(CreateTimetableParams value,
          $Res Function(CreateTimetableParams) then) =
      _$CreateTimetableParamsCopyWithImpl<$Res, CreateTimetableParams>;
  @useResult
  $Res call({String title, int startTime, int endTime, String? description});
}

/// @nodoc
class _$CreateTimetableParamsCopyWithImpl<$Res,
        $Val extends CreateTimetableParams>
    implements $CreateTimetableParamsCopyWith<$Res> {
  _$CreateTimetableParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTimetableParamsImplCopyWith<$Res>
    implements $CreateTimetableParamsCopyWith<$Res> {
  factory _$$CreateTimetableParamsImplCopyWith(
          _$CreateTimetableParamsImpl value,
          $Res Function(_$CreateTimetableParamsImpl) then) =
      __$$CreateTimetableParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int startTime, int endTime, String? description});
}

/// @nodoc
class __$$CreateTimetableParamsImplCopyWithImpl<$Res>
    extends _$CreateTimetableParamsCopyWithImpl<$Res,
        _$CreateTimetableParamsImpl>
    implements _$$CreateTimetableParamsImplCopyWith<$Res> {
  __$$CreateTimetableParamsImplCopyWithImpl(_$CreateTimetableParamsImpl _value,
      $Res Function(_$CreateTimetableParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateTimetableParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTimetableParamsImpl extends _CreateTimetableParams {
  const _$CreateTimetableParamsImpl(
      {this.title = '', this.startTime = 1, this.endTime = 2, this.description})
      : super._();

  factory _$CreateTimetableParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTimetableParamsImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int startTime;
  @override
  @JsonKey()
  final int endTime;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateTimetableParams(title: $title, startTime: $startTime, endTime: $endTime, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTimetableParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, startTime, endTime, description);

  /// Create a copy of CreateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTimetableParamsImplCopyWith<_$CreateTimetableParamsImpl>
      get copyWith => __$$CreateTimetableParamsImplCopyWithImpl<
          _$CreateTimetableParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTimetableParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateTimetableParams extends CreateTimetableParams {
  const factory _CreateTimetableParams(
      {final String title,
      final int startTime,
      final int endTime,
      final String? description}) = _$CreateTimetableParamsImpl;
  const _CreateTimetableParams._() : super._();

  factory _CreateTimetableParams.fromJson(Map<String, dynamic> json) =
      _$CreateTimetableParamsImpl.fromJson;

  @override
  String get title;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  String? get description;

  /// Create a copy of CreateTimetableParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTimetableParamsImplCopyWith<_$CreateTimetableParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
