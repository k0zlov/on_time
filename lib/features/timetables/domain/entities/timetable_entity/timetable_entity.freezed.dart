// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimetableEntity {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get invitationCode => throw _privateConstructorUsedError;
  List<EventEntity> get events => throw _privateConstructorUsedError;
  List<MemberEntity> get members => throw _privateConstructorUsedError;

  /// Create a copy of TimetableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimetableEntityCopyWith<TimetableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableEntityCopyWith<$Res> {
  factory $TimetableEntityCopyWith(
          TimetableEntity value, $Res Function(TimetableEntity) then) =
      _$TimetableEntityCopyWithImpl<$Res, TimetableEntity>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int id,
      String title,
      String? description,
      String invitationCode,
      List<EventEntity> events,
      List<MemberEntity> members});
}

/// @nodoc
class _$TimetableEntityCopyWithImpl<$Res, $Val extends TimetableEntity>
    implements $TimetableEntityCopyWith<$Res> {
  _$TimetableEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimetableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? invitationCode = null,
    Object? events = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableEntityImplCopyWith<$Res>
    implements $TimetableEntityCopyWith<$Res> {
  factory _$$TimetableEntityImplCopyWith(_$TimetableEntityImpl value,
          $Res Function(_$TimetableEntityImpl) then) =
      __$$TimetableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int id,
      String title,
      String? description,
      String invitationCode,
      List<EventEntity> events,
      List<MemberEntity> members});
}

/// @nodoc
class __$$TimetableEntityImplCopyWithImpl<$Res>
    extends _$TimetableEntityCopyWithImpl<$Res, _$TimetableEntityImpl>
    implements _$$TimetableEntityImplCopyWith<$Res> {
  __$$TimetableEntityImplCopyWithImpl(
      _$TimetableEntityImpl _value, $Res Function(_$TimetableEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimetableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? invitationCode = null,
    Object? events = null,
    Object? members = null,
  }) {
    return _then(_$TimetableEntityImpl(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberEntity>,
    ));
  }
}

/// @nodoc

class _$TimetableEntityImpl extends _TimetableEntity {
  const _$TimetableEntityImpl(
      {required this.startTime,
      required this.endTime,
      this.id = -1,
      this.title = '',
      this.description,
      this.invitationCode = '',
      final List<EventEntity> events = const [],
      final List<MemberEntity> members = const []})
      : _events = events,
        _members = members,
        super._();

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final String invitationCode;
  final List<EventEntity> _events;
  @override
  @JsonKey()
  List<EventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<MemberEntity> _members;
  @override
  @JsonKey()
  List<MemberEntity> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'TimetableEntity(startTime: $startTime, endTime: $endTime, id: $id, title: $title, description: $description, invitationCode: $invitationCode, events: $events, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableEntityImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startTime,
      endTime,
      id,
      title,
      description,
      invitationCode,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_members));

  /// Create a copy of TimetableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableEntityImplCopyWith<_$TimetableEntityImpl> get copyWith =>
      __$$TimetableEntityImplCopyWithImpl<_$TimetableEntityImpl>(
          this, _$identity);
}

abstract class _TimetableEntity extends TimetableEntity {
  const factory _TimetableEntity(
      {required final DateTime startTime,
      required final DateTime endTime,
      final int id,
      final String title,
      final String? description,
      final String invitationCode,
      final List<EventEntity> events,
      final List<MemberEntity> members}) = _$TimetableEntityImpl;
  const _TimetableEntity._() : super._();

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get invitationCode;
  @override
  List<EventEntity> get events;
  @override
  List<MemberEntity> get members;

  /// Create a copy of TimetableEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimetableEntityImplCopyWith<_$TimetableEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
