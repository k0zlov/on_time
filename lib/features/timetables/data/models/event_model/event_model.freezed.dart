// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  int get day => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get externalId => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<EventHostModel> get hosts => throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {int day,
      int startTime,
      int endTime,
      @JsonKey(name: 'id') int externalId,
      int timetableId,
      String title,
      String description,
      List<EventHostModel> hosts});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? externalId = null,
    Object? timetableId = null,
    Object? title = null,
    Object? description = null,
    Object? hosts = null,
  }) {
    return _then(_value.copyWith(
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
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as int,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hosts: null == hosts
          ? _value.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<EventHostModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int day,
      int startTime,
      int endTime,
      @JsonKey(name: 'id') int externalId,
      int timetableId,
      String title,
      String description,
      List<EventHostModel> hosts});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? externalId = null,
    Object? timetableId = null,
    Object? title = null,
    Object? description = null,
    Object? hosts = null,
  }) {
    return _then(_$EventModelImpl(
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
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as int,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hosts: null == hosts
          ? _value._hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<EventHostModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl extends _EventModel {
  const _$EventModelImpl(
      {required this.day,
      required this.startTime,
      required this.endTime,
      @JsonKey(name: 'id') this.externalId = -1,
      this.timetableId = -1,
      this.title = '',
      this.description = '',
      final List<EventHostModel> hosts = const []})
      : _hosts = hosts,
        super._();

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final int day;
  @override
  final int startTime;
  @override
  final int endTime;
  @override
  @JsonKey(name: 'id')
  final int externalId;
  @override
  @JsonKey()
  final int timetableId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final List<EventHostModel> _hosts;
  @override
  @JsonKey()
  List<EventHostModel> get hosts {
    if (_hosts is EqualUnmodifiableListView) return _hosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hosts);
  }

  @override
  String toString() {
    return 'EventModel(day: $day, startTime: $startTime, endTime: $endTime, externalId: $externalId, timetableId: $timetableId, title: $title, description: $description, hosts: $hosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      day,
      startTime,
      endTime,
      externalId,
      timetableId,
      title,
      description,
      const DeepCollectionEquality().hash(_hosts));

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
      {required final int day,
      required final int startTime,
      required final int endTime,
      @JsonKey(name: 'id') final int externalId,
      final int timetableId,
      final String title,
      final String description,
      final List<EventHostModel> hosts}) = _$EventModelImpl;
  const _EventModel._() : super._();

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  int get day;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  @JsonKey(name: 'id')
  int get externalId;
  @override
  int get timetableId;
  @override
  String get title;
  @override
  String get description;
  @override
  List<EventHostModel> get hosts;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
