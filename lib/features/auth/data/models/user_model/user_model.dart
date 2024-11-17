import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') @Default(-1) int externalId,
    @Default('') String name,
    @Default('') String lastName,
    @Default('') String email,
    @Default(false) bool isActivated,
    @Default('') String createdAt,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
        id: externalId,
        name: name,
        email: email,
        isActivated: isActivated,
        createdAt: DateTime.tryParse(createdAt),
      );
}
