import 'dart:io';

import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:repository/repository.dart';
import './api_error_handler.dart';
import './api_service.dart';
import './resources/account/account_resource.dart';
import './resources/account/add_to_watch_list_request.dart';
import './resources/account/mark_as_favorite_request.dart';
import './resources/api_response.dart';
import './resources/auth/guest_session_resource.dart';
import './resources/auth/login_request.dart';
import './resources/auth/session_resource.dart';
import './resources/auth/token_resource.dart';
import './resources/image/images_resource.dart';
import './resources/keyword_resource.dart';
import './resources/list/create_list_request.dart';
import './resources/list/custom_list_details_resource.dart';
import './resources/movie/keywords_resource.dart';
import './resources/movie/movie_resource.dart';
import './resources/pagination.dart';
import './resources/person/person_resource.dart';
import './resources/review/review_resource.dart';
import './resources/series/episode_resource.dart';
import './resources/series/season_resource.dart';
import './resources/series/series_resource.dart';
import './resources/trailer/trailers_resource.dart';

@injectable
class RemoteDataSourceImpl implements RemoteDataSource {
  final APIService apiService;
  final ApiErrorHandler apiErrorHandler;

  RemoteDataSourceImpl(this.apiService, this.apiErrorHandler);

// #region Auth and account
  @override
  Future<TokenResource> getRequestToken() async {
    return await wrapApiCall(() => apiService.getRequestToken());
  }

  @override
  Future<TokenResource> validateRequestTokenWithLogin(
      LoginRequest loginRequest) async {
    return await wrapApiCall(
        () => apiService.validateRequestTokenWithLogin(loginRequest));
  }

  @override
  Future<SessionResource> createSession(String requestToken) async {
    return await wrapApiCall(() => apiService.createSession(requestToken));
  }

  @override
  Future<GuestSessionResource> createGuestSession() async {
    return await wrapApiCall(() => apiService.createGuestSession());
  }

  @override
  Future<ApiResponse> deleteSession(String sessionId) async {
    return await wrapApiCall(() => apiService.deleteSession(sessionId));
  }

  @override
  Future<AccountResource> getAccountDetails() async {
    return await wrapApiCall(() => apiService.getAccountDetails());
  }

// #endregion

// #region rating

  @override
  Future<ApiResponse> rateMovie(int movieId, double rate) async {
    return await wrapApiCall(() => apiService.rateMovie(movieId, rate));
  }

  @override
  Future<ApiResponse> rateSeries(int seriesId, double rate) async {
    return await wrapApiCall(() => apiService.rateSeries(seriesId, rate));
  }

  @override
  Future<ApiResponse> rateEpisode(
      int seriesId, int season, int episode, double rate) async {
    return await wrapApiCall(
        () => apiService.rateEpisode(seriesId, season, episode, rate));
  }

  @override
  Future<ApiResponse> deleteMovieRating(int movieId) async {
    return await wrapApiCall(() => apiService.deleteMovieRating(movieId));
  }

// #endregion

// #region lists
  @override
  Future<ApiResponse> createList(CreateListRequest createListRequest) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.createList(createListRequest));
  }

  @override
  Future<ApiResponse> deleteList(int listId) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.deleteList(listId));
  }

  @override
  Future<ApiResponse> clearList(int listId) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.clearList(listId, true));
  }

  @override
  Future<ApiResponse> addItemsToList(int listId, int mediaId) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.addItemToList(listId, mediaId));
  }

  @override
  Future<ApiResponse> removeItemsFromList(int listId, int mediaId) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(
    //     () => apiService.removeItemFromList(listId, mediaId));
  }

  @override
  Future<CustomListDetailsResource> getListDetails(int listId) async {
    return await wrapApiCall(() => apiService.getListDetails(listId));
  }

// #endregion

// #region favorites

  @override
  Future<ApiResponse> markAsFavorite(MarkAsFavoriteRequest requestBody) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.markAsFavorite(requestBody));
  }

  @override
  Future<Pagination<SeriesResource>> getFavoriteSeries(int? page) async {
    // TODO: implement
    return Future(() => Pagination());
    // return await wrapApiCall(() => apiService.getFavoriteSeries(page, ""));
  }

  @override
  Future<Pagination<MovieResource>> getFavoriteMovies(int? page) async {
    // TODO: implement
    return Future(() => Pagination());
    // return await wrapApiCall(() => apiService.getFavoriteMovies(page, ""));
  }

// #endregion

// #region watchlist

  @override
  Future<ApiResponse> addToWatchlist(AddToWatchListRequest requestBody) async {
    // TODO: implement
    return Future(() => ApiResponse());
    // return await wrapApiCall(() => apiService.addToWatchlist(requestBody));
  }

  @override
  Future<Pagination<SeriesResource>> getSeriesWatchlist(int? page) async {
    // TODO: implement
    return Future(() => Pagination());
    // return await wrapApiCall(() => apiService.getSeriesWatchlist(page, ""));
  }

  @override
  Future<Pagination<MovieResource>> getMoviesWatchlist(int? page) async {
    // TODO: implement
    return Future(() => Pagination());
    // return await wrapApiCall(() => apiService.getMoviesWatchlist(page, ""));
  }

// #endregion

// #region movies

  @override
  Future<Pagination<MovieResource>> getPopularMovies(int? page) async {
    return await wrapApiCall(() => apiService.getPopularMovies(page));
  }

  @override
  Future<Pagination<MovieResource>> getUpcomingMovies(int? page) async {
    return await wrapApiCall(() => apiService.getUpcomingMovies(page));
  }

  @override
  Future<Pagination<MovieResource>> getTopRatedMovies(int? page) async {
    return await wrapApiCall(() => apiService.getTopRatedMovies(page));
  }

  @override
  Future<Pagination<MovieResource>> getNowPlayingMovies(int? page) async {
    return await wrapApiCall(() => apiService.getNowPlayingMovies(page));
  }

  @override
  Future<MovieResource> getMovieDetails(int movieId) async {
    return await wrapApiCall(() => apiService.getMovieDetails(movieId));
  }

  @override
  Future<MovieResource> getLatestMovie() async {
    return await wrapApiCall(() => apiService.getLatestMovie());
  }

  @override
  Future<Pagination<MovieResource>> getSimilarMovies(
      int movieId, int? page) async {
    return await wrapApiCall(() => apiService.getSimilarMovies(movieId, page));
  }

  @override
  Future<TrailersResource> getMovieTrailers(int movieId) async {
    return await wrapApiCall(() => apiService.getMovieTrailers(movieId));
  }

  @override
  Future<Pagination<MovieResource>> getMovieRecommendations(
      int movieId, int? page) async {
    return await wrapApiCall(
        () => apiService.getMovieRecommendations(movieId, page));
  }

  @override
  Future<Pagination<ReviewResource>> getMovieReviews(
      int movieId, int? page) async {
    return await wrapApiCall(() => apiService.getMovieReviews(movieId, page));
  }

// #endregion

// #region tv shows

  @override
  Future<Pagination<SeriesResource>> getOnTheAirSeries(int? page) async {
    return await wrapApiCall(() => apiService.getOnTheAirSeries(page, ""));
  }

  @override
  Future<Pagination<SeriesResource>> getAiringTodaySeries(int? page) async {
    return await wrapApiCall(() => apiService.getAiringTodaySeries(page, ""));
  }

  @override
  Future<Pagination<SeriesResource>> getPopularSeries(int? page) async {
    return await wrapApiCall(() => apiService.getPopularSeries(page));
  }

  @override
  Future<Pagination<SeriesResource>> getTopRatedSeries(int? page) async {
    return await wrapApiCall(() => apiService.getTopRatedSeries(page));
  }

  @override
  Future<SeriesResource> getSeriesDetails(int seriesId) async {
    return await wrapApiCall(() => apiService.getSeriesDetails(seriesId));
  }

  @override
  Future<ImagesResource> getSeriesImages(int seriesId) async {
    return await wrapApiCall(() => apiService.getSeriesImages(seriesId));
  }

  @override
  Future<Pagination<SeriesResource>> getSimilarSeries(
      int seriesId, int? page) async {
    return await wrapApiCall(() => apiService.getSimilarSeries(seriesId, page));
  }

  @override
  Future<TrailersResource> getSeriesTrailers(int seriesId) async {
    return await wrapApiCall(() => apiService.getSeriesTrailers(seriesId));
  }

  @override
  Future<Pagination<SeriesResource>> getSeriesRecommendations(
      int seriesId, int? page) async {
    return await wrapApiCall(
        () => apiService.getSeriesRecommendations(seriesId, page));
  }

  @override
  Future<SeriesResource> getLatestSeries() async {
    return await wrapApiCall(() => apiService.getLatestSeries());
  }

  @override
  Future<Pagination<ReviewResource>> getSeriesReviews(
      int seriesId, int? page) async {
    return await wrapApiCall(() => apiService.getSeriesReviews(seriesId, page));
  }

  @override
  Future<SeasonResource> getSeasonDetails(
      int seriesId, int seasonNumber) async {
    return await wrapApiCall(
        () => apiService.getSeasonDetails(seriesId, seasonNumber));
  }

  @override
  Future<ImagesResource> getSeasonImages(int seriesId, int seasonNumber) async {
    return await wrapApiCall(
        () => apiService.getSeasonImages(seriesId, seasonNumber));
  }

  @override
  Future<EpisodeResource> getEpisodeDetails(
      int seriesId, int season, int episode) async {
    return await wrapApiCall(
        () => apiService.getEpisodeDetails(seriesId, season, episode));
  }

  @override
  Future<ImagesResource> getEpisodeImages(
      int seriesId, int season, int episode) async {
    return await wrapApiCall(
        () => apiService.getEpisodeImages(seriesId, season, episode));
  }

  @override
  Future<TrailersResource> getEpisodeTrailers(
      int seriesId, int season, int episode) async {
    return await wrapApiCall(
        () => apiService.getEpisodeTrailers(seriesId, season, episode));
  }

// #endregion

// #region keywords

  @override
  Future<KeywordResource> getKeywordById(int keywordId) async {
    return await wrapApiCall(() => apiService.getKeywordById(keywordId));
  }

  @override
  Future<KeywordsResource> getSeriesKeywords(int seriesId) async {
    return await wrapApiCall(() => apiService.getSeriesKeywords(seriesId));
  }

  @override
  Future<Pagination<MovieResource>> getMoviesByKeyword(
      int keywordId, int? page) async {
    return await wrapApiCall(
        () => apiService.getMoviesByKeyword(keywordId, page));
  }

  @override
  Future<KeywordsResource> getMovieKeywords(int movieId) async {
    return await wrapApiCall(() => apiService.getMovieKeywords(movieId));
  }

// #endregion

// #region search and discover

  @override
  Future<Pagination<MovieResource>> search(String query, int? page) async {
    return await wrapApiCall(() => apiService.search(query, page));
  }

  @override
  Future<Pagination<MovieResource>> searchMovies(
      String query, int? page) async {
    return await wrapApiCall(() => apiService.searchMovies(query, page));
  }

  @override
  Future<Pagination<SeriesResource>> searchSeries(
      String query, int? page) async {
    return await wrapApiCall(() => apiService.searchSeries(query, page));
  }

  @override
  Future<Pagination<PersonResource>> searchPeople(
      String query, int? page) async {
    return await wrapApiCall(() => apiService.searchPeople(query, page));
  }

  @override
  Future<Pagination<MovieResource>> discoverMovies(
      int? page, String? sortBy, double? rate, int? year) async {
    return await wrapApiCall(
        () => apiService.discoverMovies(page, sortBy, rate, year));
  }

// #endregion

  Future wrapApiCall(Future Function() call) async {
    try {
      final response = await call();
      // if (response is Response && response.statusCode == 200)
      Logger().i(response);
      return response;
    } on SocketException {
      throw TimeOut();
    } on FormatException {
      throw const FormatException("");
    } on DioException catch (e) {
      throw apiErrorHandler.getFlixException(e);
    } catch (e) {
      Logger().e(e);
      rethrow;
    }
  }
}
