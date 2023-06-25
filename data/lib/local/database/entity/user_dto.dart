import "package:floor/floor.dart";

@Entity(tableName: "USER")
class UserDto {
  final String username;
  final String name;
  final String imageUrl;
  @PrimaryKey(autoGenerate: true)
  final int id;
  UserDto(
    this.id,
    this.username,
    this.name,
    this.imageUrl,
  );
}
