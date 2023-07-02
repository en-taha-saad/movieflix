import 'package:movieflix/data/remote/resources/trailer/trailer_details_resource.dart';
import 'package:movieflix/data/remote/resources/trailer/trailers_resource.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';

extension TrailersResourceExtensions on TrailersResource {
  List<TrailerEntity> toEntity() {
    return results
            ?.map((item) => item?.toEntity())
            .whereType<TrailerEntity>()
            .toList() ??
        [];
  }
}

extension TrailerDetailsResourceExtensions on TrailerDetailsResource {
  TrailerEntity toEntity() {
    return TrailerEntity(
      id: id.orEmpty(),
      key: key.orEmpty(),
      name: name.orEmpty(),
      site: site.orEmpty(),
    );
  }
}
