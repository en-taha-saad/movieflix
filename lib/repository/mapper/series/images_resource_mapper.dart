import 'package:movieflix/data/remote/resources/image/images_resource.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension ImagesResourceExtensions on ImagesResource {
  List<String> toEntity() {
    return posters
            ?.map(
                (image) => '${Constants.imageUrl}${image?.filePath.orEmpty()}')
            .toList() ??
        [];
  }
}
