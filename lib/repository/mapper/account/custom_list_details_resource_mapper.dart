import 'package:movieflix/data/remote/resources/list/custom_list_details_resource.dart';
import 'package:movieflix/domain/entity/account/custom_list_details_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import '../movie/movie_resource_mapper.dart';

extension CustomListDetailsResourceExtension on CustomListDetailsResource {
  CustomListDetailsEntity toEntity() {
    return CustomListDetailsEntity(
      createdBy: createdBy.orEmpty(),
      description: description.orEmpty(),
      id: id.orEmpty(),
      items: items?.map((item) {
            return (item?.toEntity())!;
          }).toList() ??
          [],
      name: name.orEmpty(),
      itemCount: itemCount.orZero(),
    );
  }
}
