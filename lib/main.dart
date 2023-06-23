import 'package:flutter/material.dart';
import 'package:movieflix/data/remote/remote_data_source_imp.dart';
import 'package:movieflix/data/remote/resources/auth/login_request.dart';
import 'package:movieflix/di/movieflix_application.dart';
import 'package:movieflix/data/remote/resources/account/account_resource.dart';

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

  Future request() async {
    await remoteDataSource.getRequestToken();
    final result = await remoteDataSource.validateRequestTokenWithLogin(
      LoginRequest(
        username: "tahasaad",
        password: "TwbapFDi21",
        requestToken: "a51ec6b4ab63609f93b341bbd360ea893e34752b",
      ),
    );
    return remoteDataSource.createSession(result.requestToken!);
    // await remoteDataSource.deleteSession(
    //   "028a147d7dcfdb39b4f273f89c83a6a888c14636",
    // );
  }

  @override
  Widget build(BuildContext context) {
    request();
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
