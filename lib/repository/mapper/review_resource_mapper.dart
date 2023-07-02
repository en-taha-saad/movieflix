import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/data/remote/resources/review/author_details_resource.dart';
import 'package:movieflix/data/remote/resources/review/review_resource.dart';
import 'package:movieflix/domain/entity/movie/author_details_entity.dart';
import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';

extension ReviewResourceExtensions on ReviewResource {
  ReviewEntity toEntity() {
    return ReviewEntity(
      id: int.parse(id.orEmpty()),
      author: (authorDetails?.toEntity())!,
      content: content.orEmpty(),
      createdAt: createdAt.orEmpty(),
      updatedAt: updatedAt.orEmpty(),
      imageUrl: authorDetails!.avatarPath.orEmpty(),
      rating: (authorDetails?.rating?.toInt()).orZero(),
      username: (authorDetails?.username).orEmpty(),
    );
  }
}

extension AuthorDetailsResourceExtensions on AuthorDetailsResource {
  AuthorDetailsEntity toEntity() {
    return AuthorDetailsEntity(
      avatarPath: avatarPath.orEmpty(),
      name: name.orEmpty(),
      rating: (rating?.toInt()).orZero(),
      username: username.orEmpty(),
    );
  }
}

extension ReviewResourcePaginationExtensions on Pagination<ReviewResource> {
  List<ReviewEntity> toEntity() {
    return items
            ?.map((item) => item?.toEntity())
            .whereType<ReviewEntity>()
            .toList() ??
        [];
  }
}
