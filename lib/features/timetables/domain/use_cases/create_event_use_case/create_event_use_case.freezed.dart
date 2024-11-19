// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_event_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateEventParams _$CreateEventParamsFromJson(Map<String, dynamic> json) {
  return _CreateEventParams.fromJson(json);
}

/// @nodoc
mixin _$CreateEventParams {
  String get title => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  List<int> get hosts => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CreateEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateEventParamsCopyWith<CreateEventParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventParamsCopyWith<$Res> {
  factory $CreateEventParamsCopyWith(
          CreateEventParams value, $Res Function(CreateEventParams) then) =
      _$CreateEventParamsCopyWithImpl<$Res, CreateEventParams>;
  @useResult
  $Res call(
      {String title,
      int timetableId,
      int day,
      int startTime,
      int endTime,
      List<int> hosts,
      String? description});
}

/// @nodoc
class _$CreateEventParamsCopyWithImpl<$Res, $Val extends CreateEventParams>
    implements $CreateEventParamsCopyWith<$Res> {
  _$CreateEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timetableId = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? hosts = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      hosts: null == hosts
          ? _value.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEventParamsImplCopyWith<$Res>
    implements $CreateEventParamsCopyWith<$Res> {
  factory _$$CreateEventParamsImplCopyWith(_$CreateEventParamsImpl value,
          $Res Function(_$CreateEventParamsImpl) then) =
      __$$CreateEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int timetableId,
      int day,
      int startTime,
      int endTime,
      List<int> hosts,
      String? description});
}

/// @nodoc
class __$$CreateEventParamsImplCopyWithImpl<$Res>
    extends _$CreateEventParamsCopyWithImpl<$Res, _$CreateEventParamsImpl>
    implements _$$CreateEventParamsImplCopyWith<$Res> {
  __$$CreateEventParamsImplCopyWithImpl(_$CreateEventParamsImpl _value,
      $Res Function(_$CreateEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timetableId = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? hosts = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateEventParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      hosts: null == hosts
          ? _value._hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateEventParamsImpl extends _CreateEventParams {
  const _$CreateEventParamsImpl(
      {this.title = '',
      this.timetableId = 0,
      this.day = -1,
      this.startTime = 2,
      this.endTime = 1,
      final List<int> hosts = const [],
      this.description})
      : _hosts = hosts,
        super._();

  factory _$CreateEventParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEventParamsImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int timetableId;
  @override
  @JsonKey()
  final int day;
  @override
  @JsonKey()
  final int startTime;
  @override
  @JsonKey()
  final int endTime;
  final List<int> _hosts;
  @override
  @JsonKey()
  List<int> get hosts {
    if (_hosts is EqualUnmodifiableListView) return _hosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hosts);
  }

  @override
  final String? description;

  @override
  String toString() {
    return 'CreateEventParams(title: $title, timetableId: $timetableId, day: $day, startTime: $startTime, endTime: $endTime, hosts: $hosts, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      timetableId,
      day,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_hosts),
      description);

  /// Create a copy of CreateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventParamsImplCopyWith<_$CreateEventParamsImpl> get copyWith =>
      __$$CreateEventParamsImplCopyWithImpl<_$CreateEventParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEventParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateEventParams extends CreateEventParams {
  const factory _CreateEventParams(
      {final String title,
      final int timetableId,
      final int day,
      final int startTime,
      final int endTime,
      final List<int> hosts,
      final String? description}) = _$CreateEventParamsImpl;
  const _CreateEventParams._() : super._();

  factory _CreateEventParams.fromJson(Map<String, dynamic> json) =
      _$CreateEventParamsImpl.fromJson;

  @override
  String get title;
  @override
  int get timetableId;
  @override
  int get day;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  List<int> get hosts;
  @override
  String? get description;

  /// Create a copy of CreateEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateEventParamsImplCopyWith<_$CreateEventParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
