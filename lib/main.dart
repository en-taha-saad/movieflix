import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/local_data_source_imp.dart';
import 'package:movieflix/data/local/shared_prefs_imp.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/data/remote/resources/auth/login_request.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/di/movieflix_application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final sharedPrefs = getIt<SharedPrefsImpl>();
  final localDataSource = getIt<LocalDataSourceImpl>();
  final remoteDataSource = getIt<RemoteDataSourceImpl>();

  final movieId = 385687;
  final seriesId = 83121;
  final seasonNumber = 1;
  final episode = 1;
  final seriesKeywordId = 6270;
  final movieKeywordId = 9748;
  final page = 1;
  final movieListId = 8257682;

  Future makeAuth() async {
    if (await sharedPrefs.getSessionId() == null) {
      final requestToken = await remoteDataSource.getRequestToken();
      if (requestToken.requestToken != null) {
        await sharedPrefs.setToken(requestToken.requestToken!);
        Logger().d(await sharedPrefs.getToken());
        final result = await remoteDataSource.validateRequestTokenWithLogin(
          LoginRequest(
            username: "tahasaad",
            password: "TwbapFDi21",
            requestToken: await sharedPrefs.getToken(),
            //  ?? "a51ec6b4ab63609f93b341bbd360ea893e34752b",
          ),
        );
        if (result.requestToken != null) {
          await sharedPrefs.setToken(result.requestToken!);
          Logger().v(await sharedPrefs.getToken());
          final createdSession = await remoteDataSource
              .createSession((await sharedPrefs.getToken())!);
          if (createdSession.sessionId != null) {
            await sharedPrefs.setSessionId(createdSession.sessionId!);
            Logger().i(await sharedPrefs.getSessionId());
          }
        }
      }
    }
    // await remoteDataSource.deleteSession(
    //   "028a147d7dcfdb39b4f273f89c83a6a888c14636",
    // );
  }

  Future<List<PopularMovieDto>>? getList() async {
    final localList = await localDataSource.getPopularMovies();
    if (localList.isEmpty) {
      final remoteList = await remoteDataSource.getPopularMovies(1);
      final savedRemote =
          await localDataSource.insertPopularMovies(remoteList.items?.map((e) {
                return PopularMovieDto(
                  e?.id ?? 0,
                  e?.title ?? "",
                  e?.releaseDate ?? "",
                  e?.posterPath ?? "",
                  e?.originalLanguage ?? "",
                  e?.overview ?? "",
                );
              }).toList() ??
              []);
      return savedRemote;
    } else {
      return localList;
    }
  }

  Future<List<PopularMovieDto>>? moviesList;
  @override
  Widget build(BuildContext context) {
    makeAuth();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: FutureBuilder<Pagination<MovieResource>>(
            future: remoteDataSource.getPopularMovies(1),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ///
                      ...snapshot.data?.items
                              ?.map(
                                (e) => ListTile(
                                  title: Text(e?.title ?? ""),
                                  subtitle: Image.network(
                                    "https://image.tmdb.org/t/p/w500${e?.posterPath ?? ""}",
                                  ),
                                ),
                              )
                              .toList() ??
                          [Container()],
                    ],
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
