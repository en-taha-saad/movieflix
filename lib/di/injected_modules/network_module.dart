import "package:dio/dio.dart";
import "package:injectable/injectable.dart";
import "package:movieflix/data/remote/api_service.dart";

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/"));

  @lazySingleton
  APIService get apiService => APIServiceImp(
        dio,
        dio,
        baseUrl: dio.options.baseUrl,
      );
}
