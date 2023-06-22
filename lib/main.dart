import 'package:flutter/material.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
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
        body: FutureBuilder<Pagination<MovieResource>>(
          future: remoteDataSource.getPopularMovies(1),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                    children: snapshot.data!.items!
                        .map(
                          (e) => ListTile(
                            title: Text(e!.title!),
                            subtitle: Text(e.overview!),
                          ),
                        )
                        .toList()),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
