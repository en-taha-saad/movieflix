import 'package:movieflix/data/local/database/entity/user_dto.dart';
import 'package:movieflix/data/remote/resources/auth/login_request.dart';
import 'package:movieflix/domain/entity/account/login_body_entity.dart';
import 'package:movieflix/domain/entity/account/user_entity.dart';

extension UserDtoExtension on UserDto {
  UserEntity toEntity() {
    return UserEntity(
      userName: username,
      name: name,
      imageUrl: imageUrl,
    );
  }
}

extension LoginBodyEntityExtension on LoginBodyEntity {
  LoginRequest toResource() {
    return LoginRequest(
      username: username,
      password: password,
      requestToken: requestToken,
    );
  }
}
