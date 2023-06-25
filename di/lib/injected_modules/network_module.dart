import "package:data/data.dart";
import "package:dio/dio.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(GetIt.instance<AuthorizationInterceptor>());
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  }

  @lazySingleton
  APIService getAPIService(Dio dio) => createAPIService(dio);
}
