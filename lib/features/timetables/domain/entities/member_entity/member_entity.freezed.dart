// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  MemberRole get role => throw _privateConstructorUsedError;
  List<EventHostEntity> get hosts => throw _privateConstructorUsedError;

  /// Create a copy of MemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberEntityCopyWith<MemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberEntityCopyWith<$Res> {
  factory $MemberEntityCopyWith(
          MemberEntity value, $Res Function(MemberEntity) then) =
      _$MemberEntityCopyWithImpl<$Res, MemberEntity>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int timetableId,
      String name,
      String lastName,
      MemberRole role,
      List<EventHostEntity> hosts});
}

/// @nodoc
class _$MemberEntityCopyWithImpl<$Res, $Val extends MemberEntity>
    implements $MemberEntityCopyWith<$Res> {
  _$MemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? timetableId = null,
    Object? name = null,
    Object? lastName = null,
    Object? role = null,
    Object? hosts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MemberRole,
      hosts: null == hosts
          ? _value.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<EventHostEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberEntityImplCopyWith<$Res>
    implements $MemberEntityCopyWith<$Res> {
  factory _$$MemberEntityImplCopyWith(
          _$MemberEntityImpl value, $Res Function(_$MemberEntityImpl) then) =
      __$$MemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int timetableId,
      String name,
      String lastName,
      MemberRole role,
      List<EventHostEntity> hosts});
}

/// @nodoc
class __$$MemberEntityImplCopyWithImpl<$Res>
    extends _$MemberEntityCopyWithImpl<$Res, _$MemberEntityImpl>
    implements _$$MemberEntityImplCopyWith<$Res> {
  __$$MemberEntityImplCopyWithImpl(
      _$MemberEntityImpl _value, $Res Function(_$MemberEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? timetableId = null,
    Object? name = null,
    Object? lastName = null,
    Object? role = null,
    Object? hosts = null,
  }) {
    return _then(_$MemberEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      timetableId: null == timetableId
          ? _value.timetableId
          : timetableId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MemberRole,
      hosts: null == hosts
          ? _value._hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<EventHostEntity>,
    ));
  }
}

/// @nodoc

class _$MemberEntityImpl extends _MemberEntity {
  const _$MemberEntityImpl(
      {this.id = -1,
      this.userId = -1,
      this.timetableId = -1,
      this.name = '',
      this.lastName = '',
      this.role = MemberRole.member,
      final List<EventHostEntity> hosts = const []})
      : _hosts = hosts,
        super._();

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int timetableId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final MemberRole role;
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
    return 'MemberEntity(id: $id, userId: $userId, timetableId: $timetableId, name: $name, lastName: $lastName, role: $role, hosts: $hosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, timetableId, name,
      lastName, role, const DeepCollectionEquality().hash(_hosts));

  /// Create a copy of MemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberEntityImplCopyWith<_$MemberEntityImpl> get copyWith =>
      __$$MemberEntityImplCopyWithImpl<_$MemberEntityImpl>(this, _$identity);
}

abstract class _MemberEntity extends MemberEntity {
  const factory _MemberEntity(
      {final int id,
      final int userId,
      final int timetableId,
      final String name,
      final String lastName,
      final MemberRole role,
      final List<EventHostEntity> hosts}) = _$MemberEntityImpl;
  const _MemberEntity._() : super._();

  @override
  int get id;
  @override
  int get userId;
  @override
  int get timetableId;
  @override
  String get name;
  @override
  String get lastName;
  @override
  MemberRole get role;
  @override
  List<EventHostEntity> get hosts;

  /// Create a copy of MemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberEntityImplCopyWith<_$MemberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
