import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:movieflix/di/movieflix_application.dart';
import 'package:movieflix/domain/entity/account/login_body_entity.dart';
import 'package:movieflix/domain/entity/account/token_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/repository/movie_repository_imp.dart';
import 'package:movieflix/repository/series_repository_imp.dart';
import 'package:movieflix/repository/user_repository_imp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final movieRepositoryImpl = getIt<MovieRepositoryImpl>();
  final seriesRepositoryImpl = getIt<SeriesRepositoryImpl>();
  final userRepositoryImpl = getIt<UserRepositoryImpl>();

  final movieId = 385687;
  final seriesId = 83121;
  final seasonNumber = 1;
  final episode = 1;
  final seriesKeywordId = 6270;
  final movieKeywordId = 9748;
  final page = 1;
  final movieListId = 8257682;

  Future makeAuth() async {
    // await userRepositoryImpl.deleteSession(
    //   "028a147d7dcfdb39b4f273f89c83a6a888c14636",
    // );

    if (await userRepositoryImpl.getStoredSessionId() == null) {
      var requestToken = await userRepositoryImpl.getRequestToken();
      if (requestToken.requestToken.isEmpty) {
        await userRepositoryImpl.storeRequestToken(requestToken.requestToken);
        requestToken = await userRepositoryImpl.getRequestToken();
      }
      Logger().e(requestToken.requestToken);
      final result = await userRepositoryImpl.login(
        LoginBodyEntity(
          username: "tahasaad",
          password: "TwbapFDi21",
          requestToken: requestToken.requestToken,
        ),
      );
      if (result.requestToken.isNotEmpty) {
        await userRepositoryImpl.storeRequestToken(result.requestToken);
        requestToken = TokenEntity(
          requestToken: result.requestToken,
          expiresAt: result.expiresAt,
        );
        final createdSession = await userRepositoryImpl.createSession(
          requestToken.requestToken,
        );
        if (createdSession.isNotEmpty) {
          await userRepositoryImpl.storeSessionId(createdSession);
        }
      }
    }
  }

  Stream<List<SeriesEntity>> getList() async* {
    await for (var localMovies
        in seriesRepositoryImpl.getLocalPopularSeries()) {
      if (localMovies.isEmpty) {
        final remoteList = await seriesRepositoryImpl.getPopularSeries(page: 1);
        await seriesRepositoryImpl.cachePopularSeries(remoteList);
        yield remoteList;
      } else {
        yield localMovies;
      }
    }
  }

  Stream<List<SeriesEntity>> moviesList = const Stream.empty();
  @override
  Widget build(BuildContext context) {
    // makeAuth();
    moviesList = getList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: StreamBuilder<List<SeriesEntity>>(
            stream: moviesList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ///
                      ...snapshot.data
                              ?.map(
                                (e) => ListTile(
                                  title: Text(e.name),
                                  subtitle: Image.network(e.imageUrl),
                                ),
                              )
                              .toList() ??
                          [Container()],
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
