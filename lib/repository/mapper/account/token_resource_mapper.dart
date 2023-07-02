import 'package:movieflix/data/remote/resources/auth/token_resource.dart';
import 'package:movieflix/domain/entity/account/token_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';

extension TokenResourceExtension on TokenResource {
  TokenEntity toEntity() {
    return TokenEntity(
      expiresAt: expiresAt.orEmpty(),
      requestToken: requestToken.orEmpty(),
    );
  }
}
