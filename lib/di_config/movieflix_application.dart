import 'package:data/remote/api_error_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/di_config/injection.config.dart';
import 'package:repository/local_data_source.dart';
import 'package:repository/remote_data_source.dart';
import 'package:repository/shared_prefs_data_source.dart';

final getIt = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [
    RemoteDataSource,
    ApiErrorHandler,
    LocalDataSource,
    SharedPrefs,
  ],
  usesNullSafety: true,
)
Future<void> configureDependencies() async => getIt.init();
