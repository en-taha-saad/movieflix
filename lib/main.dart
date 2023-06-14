import 'package:flutter/material.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/di/movieflix_application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final remoteDataSource = getIt<RemoteDataSourceImpl>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              remoteDataSource.getPopularMovies(1);
            },
            child: const Text('Click'),
          ),
        ),
      ),
    );
  }
}
