import "package:dio/dio.dart";
import "package:injectable/injectable.dart";
import "package:movieflix/data/remote/api_service.dart";
import "package:movieflix/data/remote/authorization_interceptor.dart";
import "package:movieflix/di/movieflix_application.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(getIt<AuthorizationInterceptor>());
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  }

  @lazySingleton
  APIService getAPIService(Dio dio) => createAPIService(dio);
}
