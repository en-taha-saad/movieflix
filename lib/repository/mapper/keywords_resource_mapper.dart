import 'package:movieflix/data/remote/resources/movie/keywords_resource.dart';
import 'package:movieflix/domain/utils/extensions.dart';

extension KeywordsResourceExtensions on KeywordsResource {
  List<String> toEntity() {
    return keywords
            ?.map((item) => item?.name.orEmpty())
            .whereType<String>() // Filter out null values
            .toList() ??
        [];
  }
}
