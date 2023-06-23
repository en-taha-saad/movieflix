import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/local_data_source_imp.dart';
import 'package:movieflix/data/remote/api_error_handler.dart';
import 'package:movieflix/data/remote/api_error_handler_imp.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/repository/local_data_source.dart';
import 'package:movieflix/repository/remote_data_source.dart';

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
