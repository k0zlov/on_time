// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventEntity {
  int get day => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<EventHostEntity> get hosts => throw _privateConstructorUsedError;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call(
      {int day,
      DateTime startTime,
      DateTime endTime,
      int id,
      int timetableId,
      String title,
      String description,
      List<EventHostEntity> hosts});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? id = null,
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
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as List<EventHostEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEntityImplCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$EventEntityImplCopyWith(
          _$EventEntityImpl value, $Res Function(_$EventEntityImpl) then) =
      __$$EventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int day,
      DateTime startTime,
      DateTime endTime,
      int id,
      int timetableId,
      String title,
      String description,
      List<EventHostEntity> hosts});
}

/// @nodoc
class __$$EventEntityImplCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$EventEntityImpl>
    implements _$$EventEntityImplCopyWith<$Res> {
  __$$EventEntityImplCopyWithImpl(
      _$EventEntityImpl _value, $Res Function(_$EventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? id = null,
    Object? timetableId = null,
    Object? title = null,
    Object? description = null,
    Object? hosts = null,
  }) {
    return _then(_$EventEntityImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as List<EventHostEntity>,
    ));
  }
}

/// @nodoc

class _$EventEntityImpl extends _EventEntity {
  const _$EventEntityImpl(
      {required this.day,
      required this.startTime,
      required this.endTime,
      this.id = -1,
      this.timetableId = -1,
      this.title = '',
      this.description = '',
      final List<EventHostEntity> hosts = const []})
      : _hosts = hosts,
        super._();

  @override
  final int day;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int timetableId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final List<EventHostEntity> _hosts;
  @override
  @JsonKey()
  List<EventHostEntity> get hosts {
    if (_hosts is EqualUnmodifiableListView) return _hosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hosts);
  }

  @override
  String toString() {
    return 'EventEntity(day: $day, startTime: $startTime, endTime: $endTime, id: $id, timetableId: $timetableId, title: $title, description: $description, hosts: $hosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEntityImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      day,
      startTime,
      endTime,
      id,
      timetableId,
      title,
      description,
      const DeepCollectionEquality().hash(_hosts));

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      __$$EventEntityImplCopyWithImpl<_$EventEntityImpl>(this, _$identity);
}

abstract class _EventEntity extends EventEntity {
  const factory _EventEntity(
      {required final int day,
      required final DateTime startTime,
      required final DateTime endTime,
      final int id,
      final int timetableId,
      final String title,
      final String description,
      final List<EventHostEntity> hosts}) = _$EventEntityImpl;
  const _EventEntity._() : super._();

  @override
  int get day;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get id;
  @override
  int get timetableId;
  @override
  String get title;
  @override
  String get description;
  @override
  List<EventHostEntity> get hosts;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
