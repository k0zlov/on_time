// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  @JsonKey(name: 'id')
  int get externalId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get timetableId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  MemberRole get role => throw _privateConstructorUsedError;
  List<EventHostModel> get hosts => throw _privateConstructorUsedError;

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int externalId,
      int userId,
      int timetableId,
      String name,
      String lastName,
      MemberRole role,
      List<EventHostModel> hosts});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalId = null,
    Object? userId = null,
    Object? timetableId = null,
    Object? name = null,
    Object? lastName = null,
    Object? role = null,
    Object? hosts = null,
  }) {
    return _then(_value.copyWith(
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
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
              as List<EventHostModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberModelImplCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$MemberModelImplCopyWith(
          _$MemberModelImpl value, $Res Function(_$MemberModelImpl) then) =
      __$$MemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int externalId,
      int userId,
      int timetableId,
      String name,
      String lastName,
      MemberRole role,
      List<EventHostModel> hosts});
}

/// @nodoc
class __$$MemberModelImplCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$MemberModelImpl>
    implements _$$MemberModelImplCopyWith<$Res> {
  __$$MemberModelImplCopyWithImpl(
      _$MemberModelImpl _value, $Res Function(_$MemberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalId = null,
    Object? userId = null,
    Object? timetableId = null,
    Object? name = null,
    Object? lastName = null,
    Object? role = null,
    Object? hosts = null,
  }) {
    return _then(_$MemberModelImpl(
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
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
              as List<EventHostModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberModelImpl extends _MemberModel {
  const _$MemberModelImpl(
      {@JsonKey(name: 'id') this.externalId = -1,
      this.userId = -1,
      this.timetableId = -1,
      this.name = '',
      this.lastName = '',
      this.role = MemberRole.member,
      final List<EventHostModel> hosts = const []})
      : _hosts = hosts,
        super._();

  factory _$MemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int externalId;
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
    return 'MemberModel(externalId: $externalId, userId: $userId, timetableId: $timetableId, name: $name, lastName: $lastName, role: $role, hosts: $hosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberModelImpl &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timetableId, timetableId) ||
                other.timetableId == timetableId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, externalId, userId, timetableId,
      name, lastName, role, const DeepCollectionEquality().hash(_hosts));

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      __$$MemberModelImplCopyWithImpl<_$MemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberModelImplToJson(
      this,
    );
  }
}

abstract class _MemberModel extends MemberModel {
  const factory _MemberModel(
      {@JsonKey(name: 'id') final int externalId,
      final int userId,
      final int timetableId,
      final String name,
      final String lastName,
      final MemberRole role,
      final List<EventHostModel> hosts}) = _$MemberModelImpl;
  const _MemberModel._() : super._();

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$MemberModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get externalId;
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
  List<EventHostModel> get hosts;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
