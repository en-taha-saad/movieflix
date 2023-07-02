import 'package:movieflix/data/remote/resources/account/add_to_watch_list_request.dart';
import 'package:movieflix/data/remote/resources/account/mark_as_favorite_request.dart';
import 'package:movieflix/data/remote/resources/list/create_list_request.dart';
import 'package:movieflix/domain/entity/account/account_entity.dart';
import 'package:movieflix/domain/entity/account/custom_list_details_entity.dart';
import 'package:movieflix/domain/entity/account/login_body_entity.dart';
import 'package:movieflix/domain/entity/account/token_entity.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';

abstract class UserRepository {
  Future<TokenEntity> getRequestToken();

  Future<TokenEntity> login(LoginBodyEntity loginRequest);

  Future<String> createSession(String requestToken);

  Future<String> createGuestSession();

  Future<void> deleteSession(String sessionId);

  Future<int> createList(CreateListRequest createListRequest);

  Future<void> deleteList(int listId);

  Future<void> clearList(int listId);

  Future<CustomListDetailsEntity> getListDetails(int listId);

  Future<void> addItemsToList(int listId, int mediaId);

  Future<void> removeItemsFromList(int listId, int mediaId);

  Future<AccountEntity> getAccountDetails();

  Future<void> markAsFavorite(MarkAsFavoriteRequest requestBody);

  Future<List<SeriesEntity>> getFavoriteSeries({int? page});

  Future<List<MovieEntity>> getFavoriteMovies({int? page});

  Future<void> addToWatchlist(AddToWatchListRequest requestBody);

  Future<List<SeriesEntity>> getSeriesWatchlist({int? page});

  Future<List<MovieEntity>> getMoviesWatchlist({int? page});

  Future<void> storeSessionId(String sessionId);

  Future<void> storeRequestToken(String requestToken);

  Future<String?> getStoredSessionId();

  Future<String?> getStoredRequestToken();

  Future<void> clearSession();

  Future<bool> isUserLoggedIn();

  Future<void> saveCachingTimeStamp(String key, int cachingTime);

  Future<int> getLastCachingTimeStamp(String key);
}
