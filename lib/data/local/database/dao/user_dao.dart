import 'package:floor/floor.dart';
import 'package:movieflix/data/local/database/entity/user_dto.dart';

@dao
abstract class UserDao {
  @insert
  Future<void> insertUserData(UserDto user);

  @Query('SELECT * FROM User LIMIT 1')
  Future<UserDto?> getUserData();
}
