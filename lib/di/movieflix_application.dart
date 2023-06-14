import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';
import 'package:movieflix/data/remote/api_error_handler.dart';
import 'package:movieflix/di/movieflix_application.config.dart';
import 'package:movieflix/repository/local_data_source.dart';
import 'package:movieflix/repository/preference_data_source.dart';
import 'package:movieflix/repository/remote_data_source.dart';

final getIt = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [
    PreferencesDataSource,
    RemoteDataSource,
    ApiErrorHandler,
    LocalDataSource,
    SharedPrefs,
  ],
  usesNullSafety: true,
)
Future<void> configureDependencies() async => await getIt.init();
