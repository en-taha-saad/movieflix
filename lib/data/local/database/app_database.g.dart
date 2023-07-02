// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  MovieDao? _movieDaoInstance;

  SeriesDao? _seriesDaoInstance;

  UserDao? _userDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AIRING_TODAY_SERIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `popularity` REAL NOT NULL, `voteAverage` REAL NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `NOW_PLAYING_MOVIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ON_THE_AIR_SERIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `popularity` REAL NOT NULL, `voteAverage` REAL NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `UPCOMING_MOVIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `POPULAR_MOVIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `POPULAR_SERIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `popularity` REAL NOT NULL, `voteAverage` REAL NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TOP_RATED_MOVIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TOP_RATED_SERIES` (`title` TEXT NOT NULL, `originalLanguage` TEXT NOT NULL, `overview` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `date` TEXT NOT NULL, `popularity` REAL NOT NULL, `voteAverage` REAL NOT NULL, `id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `USER` (`username` TEXT NOT NULL, `name` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  MovieDao get movieDao {
    return _movieDaoInstance ??= _$MovieDao(database, changeListener);
  }

  @override
  SeriesDao get seriesDao {
    return _seriesDaoInstance ??= _$SeriesDao(database, changeListener);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }
}

class _$MovieDao extends MovieDao {
  _$MovieDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _popularMovieDtoInsertionAdapter = InsertionAdapter(
            database,
            'POPULAR_MOVIES',
            (PopularMovieDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'id': item.id
                }),
        _topRatedMovieDtoInsertionAdapter = InsertionAdapter(
            database,
            'TOP_RATED_MOVIES',
            (TopRatedMovieDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'id': item.id
                }),
        _nowPlayingMovieDtoInsertionAdapter = InsertionAdapter(
            database,
            'NOW_PLAYING_MOVIES',
            (NowPlayingMovieDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'id': item.id
                }),
        _upcomingMovieDtoInsertionAdapter = InsertionAdapter(
            database,
            'UPCOMING_MOVIES',
            (UpcomingMovieDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'id': item.id
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PopularMovieDto> _popularMovieDtoInsertionAdapter;

  final InsertionAdapter<TopRatedMovieDto> _topRatedMovieDtoInsertionAdapter;

  final InsertionAdapter<NowPlayingMovieDto>
      _nowPlayingMovieDtoInsertionAdapter;

  final InsertionAdapter<UpcomingMovieDto> _upcomingMovieDtoInsertionAdapter;

  @override
  Future<List<PopularMovieDto>> getPopularMovies() async {
    return _queryAdapter.queryList('SELECT * FROM POPULAR_MOVIES',
        mapper: (Map<String, Object?> row) => PopularMovieDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String));
  }

  @override
  Future<List<TopRatedMovieDto>> getTopRatedMovies() async {
    return _queryAdapter.queryList('SELECT * FROM TOP_RATED_MOVIES',
        mapper: (Map<String, Object?> row) => TopRatedMovieDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String));
  }

  @override
  Future<List<NowPlayingMovieDto>> getNowPlayingMovies() async {
    return _queryAdapter.queryList('SELECT * FROM NOW_PLAYING_MOVIES',
        mapper: (Map<String, Object?> row) => NowPlayingMovieDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String));
  }

  @override
  Future<List<UpcomingMovieDto>> getUpcomingMovies() async {
    return _queryAdapter.queryList('SELECT * FROM UPCOMING_MOVIES',
        mapper: (Map<String, Object?> row) => UpcomingMovieDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String));
  }

  @override
  Future<void> insertPopularMovies(List<PopularMovieDto> popularMovies) async {
    await _popularMovieDtoInsertionAdapter.insertList(
        popularMovies, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertTopRatedMovies(
      List<TopRatedMovieDto> topRatedMovies) async {
    await _topRatedMovieDtoInsertionAdapter.insertList(
        topRatedMovies, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertNowPlayingMovies(
      List<NowPlayingMovieDto> nowPlayingMovies) async {
    await _nowPlayingMovieDtoInsertionAdapter.insertList(
        nowPlayingMovies, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertUpcomingMovies(
      List<UpcomingMovieDto> upcomingMovies) async {
    await _upcomingMovieDtoInsertionAdapter.insertList(
        upcomingMovies, OnConflictStrategy.abort);
  }
}

class _$SeriesDao extends SeriesDao {
  _$SeriesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _popularSeriesDtoInsertionAdapter = InsertionAdapter(
            database,
            'POPULAR_SERIES',
            (PopularSeriesDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'popularity': item.popularity,
                  'voteAverage': item.voteAverage,
                  'id': item.id
                }),
        _topRatedSeriesDtoInsertionAdapter = InsertionAdapter(
            database,
            'TOP_RATED_SERIES',
            (TopRatedSeriesDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'popularity': item.popularity,
                  'voteAverage': item.voteAverage,
                  'id': item.id
                }),
        _onTheAirSeriesDtoInsertionAdapter = InsertionAdapter(
            database,
            'ON_THE_AIR_SERIES',
            (OnTheAirSeriesDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'popularity': item.popularity,
                  'voteAverage': item.voteAverage,
                  'id': item.id
                }),
        _airingTodaySeriesDtoInsertionAdapter = InsertionAdapter(
            database,
            'AIRING_TODAY_SERIES',
            (AiringTodaySeriesDto item) => <String, Object?>{
                  'title': item.title,
                  'originalLanguage': item.originalLanguage,
                  'overview': item.overview,
                  'imageUrl': item.imageUrl,
                  'date': item.date,
                  'popularity': item.popularity,
                  'voteAverage': item.voteAverage,
                  'id': item.id
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PopularSeriesDto> _popularSeriesDtoInsertionAdapter;

  final InsertionAdapter<TopRatedSeriesDto> _topRatedSeriesDtoInsertionAdapter;

  final InsertionAdapter<OnTheAirSeriesDto> _onTheAirSeriesDtoInsertionAdapter;

  final InsertionAdapter<AiringTodaySeriesDto>
      _airingTodaySeriesDtoInsertionAdapter;

  @override
  Future<List<PopularSeriesDto>> getPopularSeries() async {
    return _queryAdapter.queryList('SELECT * FROM POPULAR_SERIES',
        mapper: (Map<String, Object?> row) => PopularSeriesDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String,
            row['popularity'] as double,
            row['voteAverage'] as double));
  }

  @override
  Future<List<TopRatedSeriesDto>> getTopRatedSeries() async {
    return _queryAdapter.queryList('SELECT * FROM TOP_RATED_SERIES',
        mapper: (Map<String, Object?> row) => TopRatedSeriesDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String,
            row['popularity'] as double,
            row['voteAverage'] as double));
  }

  @override
  Future<List<OnTheAirSeriesDto>> getOnTheAirSeries() async {
    return _queryAdapter.queryList('SELECT * FROM ON_THE_AIR_SERIES',
        mapper: (Map<String, Object?> row) => OnTheAirSeriesDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String,
            row['popularity'] as double,
            row['voteAverage'] as double));
  }

  @override
  Future<List<AiringTodaySeriesDto>> getAiringTodaySeries() async {
    return _queryAdapter.queryList('SELECT * FROM AIRING_TODAY_SERIES',
        mapper: (Map<String, Object?> row) => AiringTodaySeriesDto(
            row['id'] as int,
            row['title'] as String,
            row['date'] as String,
            row['imageUrl'] as String,
            row['originalLanguage'] as String,
            row['overview'] as String,
            row['popularity'] as double,
            row['voteAverage'] as double));
  }

  @override
  Future<void> insertPopularSeries(List<PopularSeriesDto> popularSeries) async {
    await _popularSeriesDtoInsertionAdapter.insertList(
        popularSeries, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertTopRatedSeries(
      List<TopRatedSeriesDto> topRatedSeries) async {
    await _topRatedSeriesDtoInsertionAdapter.insertList(
        topRatedSeries, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOnTheAirSeries(
      List<OnTheAirSeriesDto> onTheAirSeries) async {
    await _onTheAirSeriesDtoInsertionAdapter.insertList(
        onTheAirSeries, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertAiringTodaySeries(
      List<AiringTodaySeriesDto> airingTodaySeries) async {
    await _airingTodaySeriesDtoInsertionAdapter.insertList(
        airingTodaySeries, OnConflictStrategy.abort);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _userDtoInsertionAdapter = InsertionAdapter(
            database,
            'USER',
            (UserDto item) => <String, Object?>{
                  'username': item.username,
                  'name': item.name,
                  'imageUrl': item.imageUrl,
                  'id': item.id
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserDto> _userDtoInsertionAdapter;

  @override
  Future<UserDto?> getUserData() async {
    return _queryAdapter.query('SELECT * FROM User LIMIT 1',
        mapper: (Map<String, Object?> row) => UserDto(
            row['id'] as int,
            row['username'] as String,
            row['name'] as String,
            row['imageUrl'] as String));
  }

  @override
  Future<void> insertUserData(UserDto user) async {
    await _userDtoInsertionAdapter.insert(user, OnConflictStrategy.abort);
  }
}
