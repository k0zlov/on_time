// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableModel _$TimetableModelFromJson(Map<String, dynamic> json) {
  return _TimetableModel.fromJson(json);
}

/// @nodoc
mixin _$TimetableModel {
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get externalId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get invitationCode => throw _privateConstructorUsedError;
  List<EventModel> get events => throw _privateConstructorUsedError;
  List<MemberModel> get members => throw _privateConstructorUsedError;

  /// Serializes this TimetableModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimetableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimetableModelCopyWith<TimetableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableModelCopyWith<$Res> {
  factory $TimetableModelCopyWith(
          TimetableModel value, $Res Function(TimetableModel) then) =
      _$TimetableModelCopyWithImpl<$Res, TimetableModel>;
  @useResult
  $Res call(
      {int startTime,
      int endTime,
      @JsonKey(name: 'id') int externalId,
      String title,
      String? description,
      String invitationCode,
      List<EventModel> events,
      List<MemberModel> members});
}

/// @nodoc
class _$TimetableModelCopyWithImpl<$Res, $Val extends TimetableModel>
    implements $TimetableModelCopyWith<$Res> {
  _$TimetableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimetableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? externalId = null,
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
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
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
              as List<EventModel>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableModelImplCopyWith<$Res>
    implements $TimetableModelCopyWith<$Res> {
  factory _$$TimetableModelImplCopyWith(_$TimetableModelImpl value,
          $Res Function(_$TimetableModelImpl) then) =
      __$$TimetableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int startTime,
      int endTime,
      @JsonKey(name: 'id') int externalId,
      String title,
      String? description,
      String invitationCode,
      List<EventModel> events,
      List<MemberModel> members});
}

/// @nodoc
class __$$TimetableModelImplCopyWithImpl<$Res>
    extends _$TimetableModelCopyWithImpl<$Res, _$TimetableModelImpl>
    implements _$$TimetableModelImplCopyWith<$Res> {
  __$$TimetableModelImplCopyWithImpl(
      _$TimetableModelImpl _value, $Res Function(_$TimetableModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimetableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? externalId = null,
    Object? title = null,
    Object? description = freezed,
    Object? invitationCode = null,
    Object? events = null,
    Object? members = null,
  }) {
    return _then(_$TimetableModelImpl(
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
              as List<EventModel>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableModelImpl extends _TimetableModel {
  const _$TimetableModelImpl(
      {required this.startTime,
      required this.endTime,
      @JsonKey(name: 'id') this.externalId = -1,
      this.title = '',
      this.description,
      this.invitationCode = '',
      final List<EventModel> events = const [],
      final List<MemberModel> members = const []})
      : _events = events,
        _members = members,
        super._();

  factory _$TimetableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableModelImplFromJson(json);

  @override
  final int startTime;
  @override
  final int endTime;
  @override
  @JsonKey(name: 'id')
  final int externalId;
  @override
  @JsonKey()
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final String invitationCode;
  final List<EventModel> _events;
  @override
  @JsonKey()
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<MemberModel> _members;
  @override
  @JsonKey()
  List<MemberModel> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'TimetableModel(startTime: $startTime, endTime: $endTime, externalId: $externalId, title: $title, description: $description, invitationCode: $invitationCode, events: $events, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableModelImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startTime,
      endTime,
      externalId,
      title,
      description,
      invitationCode,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_members));

  /// Create a copy of TimetableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableModelImplCopyWith<_$TimetableModelImpl> get copyWith =>
      __$$TimetableModelImplCopyWithImpl<_$TimetableModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableModelImplToJson(
      this,
    );
  }
}

abstract class _TimetableModel extends TimetableModel {
  const factory _TimetableModel(
      {required final int startTime,
      required final int endTime,
      @JsonKey(name: 'id') final int externalId,
      final String title,
      final String? description,
      final String invitationCode,
      final List<EventModel> events,
      final List<MemberModel> members}) = _$TimetableModelImpl;
  const _TimetableModel._() : super._();

  factory _TimetableModel.fromJson(Map<String, dynamic> json) =
      _$TimetableModelImpl.fromJson;

  @override
  int get startTime;
  @override
  int get endTime;
  @override
  @JsonKey(name: 'id')
  int get externalId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get invitationCode;
  @override
  List<EventModel> get events;
  @override
  List<MemberModel> get members;

  /// Create a copy of TimetableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimetableModelImplCopyWith<_$TimetableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
