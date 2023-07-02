import 'package:movieflix/data/remote/resources/account/add_to_watch_list_request.dart';
import 'package:movieflix/data/remote/resources/account/mark_as_favorite_request.dart';
import 'package:movieflix/data/remote/resources/list/create_list_request.dart';
import 'package:movieflix/domain/entity/account/account_entity.dart';
import 'package:movieflix/domain/entity/account/custom_list_details_entity.dart';
import 'package:movieflix/domain/entity/account/login_body_entity.dart';
import 'package:movieflix/domain/entity/account/token_entity.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/repository/user_repository.dart';
import 'package:movieflix/repository/remote_data_source.dart';
import 'package:movieflix/repository/shared_prefs_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource remoteDataSource;
  final SharedPrefs preferencesDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.preferencesDataSource,
  });

  @override
  Future<TokenEntity> getRequestToken() async {
    return remoteDataSource.getRequestToken().toEntity();
  }

  @override
  Future<TokenEntity> login(LoginBodyEntity loginRequest) async {
    return remoteDataSource
        .validateRequestTokenWithLogin(loginRequest.toResource())
        .toEntity();
  }

  @override
  Future<String> createSession(String requestToken) async {
    return (await remoteDataSource.createSession(requestToken)).sessionId ?? '';
  }

  @override
  Future<String> createGuestSession() async {
    return (await remoteDataSource.createGuestSession()).guestSessionId ?? '';
  }

  @override
  Future<void> deleteSession(String sessionId) async {
    remoteDataSource.deleteSession(sessionId);
  }

  @override
  Future<int> createList(CreateListRequest createListRequest) async {
    return (await remoteDataSource.createList(createListRequest)).listId ?? 0;
  }

  @override
  Future<void> deleteList(int listId) async {
    remoteDataSource.deleteList(listId);
  }

  @override
  Future<void> clearList(int listId) async {
    remoteDataSource.clearList(listId);
  }

  @override
  Future<CustomListDetailsEntity> getListDetails(int listId) async {
    return remoteDataSource.getListDetails(listId).toEntity();
  }

  @override
  Future<void> addItemsToList(int listId, int mediaId) async {
    remoteDataSource.addItemsToList(listId, mediaId);
  }

  @override
  Future<void> removeItemsFromList(int listId, int mediaId) async {
    remoteDataSource.removeItemsFromList(listId, mediaId);
  }

  @override
  Future<AccountEntity> getAccountDetails() async {
    return remoteDataSource.getAccountDetails().toEntity();
  }

  @override
  Future<void> markAsFavorite(MarkAsFavoriteRequest requestBody) async {
    remoteDataSource.markAsFavorite(requestBody);
  }

  @override
  Future<List<SeriesEntity>> getFavoriteSeries({int? page}) async {
    return remoteDataSource.getFavoriteSeries(page).toEntity() ?? [];
  }

  @override
  Future<List<MovieEntity>> getFavoriteMovies({int? page}) async {
    return remoteDataSource.getFavoriteMovies(page).toEntity() ?? [];
  }

  @override
  Future<void> addToWatchlist(AddToWatchListRequest requestBody) async {
    remoteDataSource.addToWatchlist(requestBody);
  }

  @override
  Future<List<SeriesEntity>> getSeriesWatchlist({int? page}) async {
    return remoteDataSource.getSeriesWatchlist(page).toEntity() ?? [];
  }

  @override
  Future<List<MovieEntity>> getMoviesWatchlist({int? page}) async {
    return remoteDataSource.getMoviesWatchlist(page).toEntity() ?? [];
  }

  @override
  Future<void> storeSessionId(String sessionId) async {
    preferencesDataSource.setSessionId(sessionId);
  }

  @override
  Future<void> storeRequestToken(String requestToken) async {
    preferencesDataSource.setToken(requestToken);
  }

  @override
  Future<String?> getStoredSessionId() async {
    return preferencesDataSource.getSessionId();
  }

  @override
  Future<String?> getStoredRequestToken() async {
    return preferencesDataSource.getToken();
  }

  @override
  Future<void> clearSession() async {
    preferencesDataSource.clearSessionId();
  }

  @override
  Future<bool> isUserLoggedIn() async {
    return preferencesDataSource.isUserLoggedIn();
  }

  @override
  Future<void> saveCachingTimeStamp(String key, int cachingTime) async {
    preferencesDataSource.saveLastCachingTimeStamp(key, cachingTime);
  }

  @override
  Future<int> getLastCachingTimeStamp(String key) async {
    return preferencesDataSource.getLastCachingTime(key);
  }
}
