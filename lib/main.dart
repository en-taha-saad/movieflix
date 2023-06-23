// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/di/movieflix_application.dart';
import 'package:movieflix/data/remote/resources/account/account_resource.dart';
import 'package:movieflix/data/remote/resources/account/mark_as_favorite_request.dart';
import 'package:movieflix/data/remote/resources/auth/login_request.dart';
import 'package:movieflix/data/remote/resources/auth/session_resource.dart';
import 'package:movieflix/data/remote/resources/list/create_list_request.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/data/remote/resources/image/images_resource.dart';
import 'package:movieflix/data/remote/resources/keyword_resource.dart';
import 'package:movieflix/data/remote/resources/movie/keywords_resource.dart';
import 'package:movieflix/data/remote/resources/person/person_resource.dart';
import 'package:movieflix/data/remote/resources/review/review_resource.dart';
import 'package:movieflix/data/remote/resources/series/episode_resource.dart';
import 'package:movieflix/data/remote/resources/series/season_resource.dart';
import 'package:movieflix/data/remote/resources/series/series_resource.dart';
import 'package:movieflix/data/remote/resources/trailer/trailers_resource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final remoteDataSource = getIt<RemoteDataSourceImpl>();
  final movieId = 385687;
  final seriesId = 83121;
  final seasonNumber = 1;
  final episode = 1;
  final seriesKeywordId = 6270;
  final movieKeywordId = 9748;
  final page = 1;
  final movieListId = 8257682;

  // Future<SessionResource> request() async {
  //   final result = await remoteDataSource.validateRequestTokenWithLogin(
  //     LoginRequest(
  //       username: "tahasaad",
  //       password: "TwbapFDi21",
  //       requestToken: "55301311c135b5e7cb85f6396e43ecff8a8d0e50",
  //     ),
  //   );
  //   return remoteDataSource.createSession(result.requestToken!);
  // }

  @override
  Widget build(BuildContext context) {
    // request();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: FutureBuilder<AccountResource>(
            future: remoteDataSource.getAccountDetails(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ///
                      ListTile(
                        title: Text(snapshot.data?.id.toString() ?? ""),
                        subtitle: Text(snapshot.data?.name ?? ""),
                      ),

                      ///
                      // ...snapshot.data?.items
                      //         ?.map(
                      //           (e) => ListTile(
                      //             title: Text(e?.title ?? ""),
                      //           ),
                      //         )
                      //         .toList() ??
                      //     [Container()],

                      ///
                      // ...snapshot.data?.stills
                      //         ?.map(
                      //           (e) => Image.network(
                      //             "https://image.tmdb.org/t/p/w500${e?.filePath}",
                      //           ),
                      //         )
                      //         .toList() ??
                      //     [Container()],
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
