import 'package:movieflix/data/remote/resources/person/person_resource.dart';
import 'package:movieflix/domain/entity/account/person_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension PersonResourceExtension on PersonResource {
  PersonEntity toEntity() {
    return PersonEntity(
      id: id.orZero(),
      name: name.orEmpty(),
      imageUrl: "${Constants.imageUrl}${profilePath?.orEmpty()}",
      biography: biography.orEmpty(),
      birthday: birthday.orEmpty(),
      knownForDepartment: knownForDepartment.orEmpty(),
      placeOfBirth: placeOfBirth.orEmpty(),
    );
  }
}
