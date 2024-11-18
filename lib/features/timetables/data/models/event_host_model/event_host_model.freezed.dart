// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_host_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventHostModel _$EventHostModelFromJson(Map<String, dynamic> json) {
  return _EventHostModel.fromJson(json);
}

/// @nodoc
mixin _$EventHostModel {
  @JsonKey(name: 'id')
  int get externalId => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  /// Serializes this EventHostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventHostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventHostModelCopyWith<EventHostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventHostModelCopyWith<$Res> {
  factory $EventHostModelCopyWith(
          EventHostModel value, $Res Function(EventHostModel) then) =
      _$EventHostModelCopyWithImpl<$Res, EventHostModel>;
  @useResult
  $Res call({@JsonKey(name: 'id') int externalId, int eventId, int memberId});
}

/// @nodoc
class _$EventHostModelCopyWithImpl<$Res, $Val extends EventHostModel>
    implements $EventHostModelCopyWith<$Res> {
  _$EventHostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventHostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalId = null,
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EventHostModelImplCopyWith<$Res>
    implements $EventHostModelCopyWith<$Res> {
  factory _$$EventHostModelImplCopyWith(_$EventHostModelImpl value,
          $Res Function(_$EventHostModelImpl) then) =
      __$$EventHostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int externalId, int eventId, int memberId});
}

/// @nodoc
class __$$EventHostModelImplCopyWithImpl<$Res>
    extends _$EventHostModelCopyWithImpl<$Res, _$EventHostModelImpl>
    implements _$$EventHostModelImplCopyWith<$Res> {
  __$$EventHostModelImplCopyWithImpl(
      _$EventHostModelImpl _value, $Res Function(_$EventHostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventHostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalId = null,
    Object? eventId = null,
    Object? memberId = null,
  }) {
    return _then(_$EventHostModelImpl(
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$EventHostModelImpl extends _EventHostModel {
  const _$EventHostModelImpl(
      {@JsonKey(name: 'id') this.externalId = -1,
      this.eventId = -1,
      this.memberId = -1})
      : super._();

  factory _$EventHostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventHostModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int externalId;
  @override
  @JsonKey()
  final int eventId;
  @override
  @JsonKey()
  final int memberId;

  @override
  String toString() {
    return 'EventHostModel(externalId: $externalId, eventId: $eventId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventHostModelImpl &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, externalId, eventId, memberId);

  /// Create a copy of EventHostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventHostModelImplCopyWith<_$EventHostModelImpl> get copyWith =>
      __$$EventHostModelImplCopyWithImpl<_$EventHostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventHostModelImplToJson(
      this,
    );
  }
}

abstract class _EventHostModel extends EventHostModel {
  const factory _EventHostModel(
      {@JsonKey(name: 'id') final int externalId,
      final int eventId,
      final int memberId}) = _$EventHostModelImpl;
  const _EventHostModel._() : super._();

  factory _EventHostModel.fromJson(Map<String, dynamic> json) =
      _$EventHostModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get externalId;
  @override
  int get eventId;
  @override
  int get memberId;

  /// Create a copy of EventHostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventHostModelImplCopyWith<_$EventHostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
