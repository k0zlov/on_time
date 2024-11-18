// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_host_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventHostEntity {
  int get id => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  /// Create a copy of EventHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventHostEntityCopyWith<EventHostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventHostEntityCopyWith<$Res> {
  factory $EventHostEntityCopyWith(
          EventHostEntity value, $Res Function(EventHostEntity) then) =
      _$EventHostEntityCopyWithImpl<$Res, EventHostEntity>;
  @useResult
  $Res call({int id, int eventId, int memberId});
}

/// @nodoc
class _$EventHostEntityCopyWithImpl<$Res, $Val extends EventHostEntity>
    implements $EventHostEntityCopyWith<$Res> {
  _$EventHostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventHostEntityImplCopyWith<$Res>
    implements $EventHostEntityCopyWith<$Res> {
  factory _$$EventHostEntityImplCopyWith(_$EventHostEntityImpl value,
          $Res Function(_$EventHostEntityImpl) then) =
      __$$EventHostEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int eventId, int memberId});
}

/// @nodoc
class __$$EventHostEntityImplCopyWithImpl<$Res>
    extends _$EventHostEntityCopyWithImpl<$Res, _$EventHostEntityImpl>
    implements _$$EventHostEntityImplCopyWith<$Res> {
  __$$EventHostEntityImplCopyWithImpl(
      _$EventHostEntityImpl _value, $Res Function(_$EventHostEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_$EventHostEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EventHostEntityImpl extends _EventHostEntity {
  const _$EventHostEntityImpl(
      {this.id = -1, this.eventId = -1, this.memberId = -1})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int eventId;
  @override
  @JsonKey()
  final int memberId;

  @override
  String toString() {
    return 'EventHostEntity(id: $id, eventId: $eventId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventHostEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, eventId, memberId);

  /// Create a copy of EventHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventHostEntityImplCopyWith<_$EventHostEntityImpl> get copyWith =>
      __$$EventHostEntityImplCopyWithImpl<_$EventHostEntityImpl>(
          this, _$identity);
}

abstract class _EventHostEntity extends EventHostEntity {
  const factory _EventHostEntity(
      {final int id,
      final int eventId,
      final int memberId}) = _$EventHostEntityImpl;
  const _EventHostEntity._() : super._();

  @override
  int get id;
  @override
  int get eventId;
  @override
  int get memberId;

  /// Create a copy of EventHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventHostEntityImplCopyWith<_$EventHostEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
