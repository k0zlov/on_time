import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String lastName,
    @Default('') String email,
    @Default(false) bool isActivated,
    @Default(null) DateTime? createdAt,
  }) = _UserEntity;

  const UserEntity._();
}
