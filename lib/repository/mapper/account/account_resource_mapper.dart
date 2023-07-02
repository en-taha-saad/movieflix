import "package:movieflix/data/remote/resources/account/account_resource.dart";
import "package:movieflix/domain/entity/account/account_entity.dart";
import "package:movieflix/domain/utils/extensions.dart";
import "package:movieflix/domain/utils/static.dart";

extension AccountResourceExtension on AccountResource {
  AccountEntity toEntity() {
    return AccountEntity(
      id: id.orZero(),
      name: name.orEmpty(),
      username: username.orEmpty(),
      avatarPath:
          "${Constants.imageUrl}${avatar?.avatarPath?.avatarPath.orEmpty()}",
    );
  }
}
