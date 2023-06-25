import 'package:floor/floor.dart';

import '../entity/user_dto.dart';

@dao
abstract class UserDao {
  @insert
  Future<void> insertUserData(UserDto user);

  @Query('SELECT * FROM User LIMIT 1')
  Future<UserDto?> getUserData();
}
