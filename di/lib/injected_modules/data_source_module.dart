import 'package:data/data.dart';
import 'package:data/local/local_data_source_imp.dart';
import 'package:injectable/injectable.dart';
import 'package:repository/repository.dart';

@module
abstract class DataSourceModule {
  @singleton
  RemoteDataSource bindRemoteDataSource(
          RemoteDataSourceImpl remoteDataSourceImpl) =>
      remoteDataSourceImpl;

  @singleton
  LocalDataSource bindLocalDataSource(
          LocalDataSourceImpl localDataSourceImpl) =>
      localDataSourceImpl;

  @singleton
  ApiErrorHandler bindAPIErrorHandler(
          ApiErrorHandlerImpl apiErrorHandlerImpl) =>
      apiErrorHandlerImpl;
}
