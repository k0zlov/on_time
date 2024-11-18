// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketResponseModel _$SocketResponseModelFromJson(Map<String, dynamic> json) {
  return _SocketResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SocketResponseModel {
  @JsonKey(name: 'eventType')
  String get type => throw _privateConstructorUsedError;
  List<TimetableModel> get data => throw _privateConstructorUsedError;

  /// Serializes this SocketResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketResponseModelCopyWith<SocketResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketResponseModelCopyWith<$Res> {
  factory $SocketResponseModelCopyWith(
          SocketResponseModel value, $Res Function(SocketResponseModel) then) =
      _$SocketResponseModelCopyWithImpl<$Res, SocketResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'eventType') String type, List<TimetableModel> data});
}

/// @nodoc
class _$SocketResponseModelCopyWithImpl<$Res, $Val extends SocketResponseModel>
    implements $SocketResponseModelCopyWith<$Res> {
  _$SocketResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimetableModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketResponseModelImplCopyWith<$Res>
    implements $SocketResponseModelCopyWith<$Res> {
  factory _$$SocketResponseModelImplCopyWith(_$SocketResponseModelImpl value,
          $Res Function(_$SocketResponseModelImpl) then) =
      __$$SocketResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'eventType') String type, List<TimetableModel> data});
}

/// @nodoc
class __$$SocketResponseModelImplCopyWithImpl<$Res>
    extends _$SocketResponseModelCopyWithImpl<$Res, _$SocketResponseModelImpl>
    implements _$$SocketResponseModelImplCopyWith<$Res> {
  __$$SocketResponseModelImplCopyWithImpl(_$SocketResponseModelImpl _value,
      $Res Function(_$SocketResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$SocketResponseModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimetableModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketResponseModelImpl extends _SocketResponseModel {
  const _$SocketResponseModelImpl(
      {@JsonKey(name: 'eventType') required this.type,
      final List<TimetableModel> data = const []})
      : _data = data,
        super._();

  factory _$SocketResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'eventType')
  final String type;
  final List<TimetableModel> _data;
  @override
  @JsonKey()
  List<TimetableModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SocketResponseModel(type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketResponseModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SocketResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketResponseModelImplCopyWith<_$SocketResponseModelImpl> get copyWith =>
      __$$SocketResponseModelImplCopyWithImpl<_$SocketResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SocketResponseModel extends SocketResponseModel {
  const factory _SocketResponseModel(
      {@JsonKey(name: 'eventType') required final String type,
      final List<TimetableModel> data}) = _$SocketResponseModelImpl;
  const _SocketResponseModel._() : super._();

  factory _SocketResponseModel.fromJson(Map<String, dynamic> json) =
      _$SocketResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'eventType')
  String get type;
  @override
  List<TimetableModel> get data;

  /// Create a copy of SocketResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketResponseModelImplCopyWith<_$SocketResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
