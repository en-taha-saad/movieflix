import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/data/remote/resources/person/person_resource.dart';
import 'package:movieflix/domain/entity/account/person_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension PersonResourceExtensions on PersonResource {
  PersonEntity toEntity() {
    return PersonEntity(
      id: id.orZero(),
      name: name.orEmpty(),
      imageUrl: "${Constants.imageUrl}$profilePath",
      biography: biography.orEmpty(),
      birthday: birthday.orEmpty(),
      knownForDepartment: knownForDepartment.orEmpty(),
      placeOfBirth: placeOfBirth.orEmpty(),
    );
  }
}

extension PersonResourceListExtensions on Pagination<PersonResource> {
  toEntity() {
    return items
            ?.whereType<PersonResource>()
            .map((personResource) => personResource.toEntity())
            .whereType<PersonEntity>()
            .toList() ??
        [];
  }
}
