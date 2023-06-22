import 'package:movieflix/data/remote/resources/account/account_resource.dart';
import 'package:movieflix/data/remote/resources/account/add_to_watch_list_request.dart';
import 'package:movieflix/data/remote/resources/account/mark_as_favorite_request.dart';
import 'package:movieflix/data/remote/resources/api_response.dart';
import 'package:movieflix/data/remote/resources/auth/guest_session_resource.dart';
import 'package:movieflix/data/remote/resources/auth/login_request.dart';
import 'package:movieflix/data/remote/resources/auth/session_resource.dart';
import 'package:movieflix/data/remote/resources/auth/token_resource.dart';
import 'package:movieflix/data/remote/resources/image/images_resource.dart';
import 'package:movieflix/data/remote/resources/keyword_resource.dart';
import 'package:movieflix/data/remote/resources/list/create_list_request.dart';
import 'package:movieflix/data/remote/resources/list/custom_list_details_resource.dart';
import 'package:movieflix/data/remote/resources/movie/keywords_resource.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/data/remote/resources/person/person_resource.dart';
import 'package:movieflix/data/remote/resources/review/review_resource.dart';
import 'package:movieflix/data/remote/resources/series/episode_resource.dart';
import 'package:movieflix/data/remote/resources/series/season_resource.dart';
import 'package:movieflix/data/remote/resources/series/series_resource.dart';
import 'package:movieflix/data/remote/resources/trailer/trailers_resource.dart';

abstract class RemoteDataSource {
  Future<TokenResource> getRequestToken();
  Future<TokenResource> validateRequestTokenWithLogin(
      LoginRequest loginRequest);
  Future<SessionResource> createSession(String requestToken);
  Future<GuestSessionResource> createGuestSession();
  Future<ApiResponse> deleteSession(String sessionId);

  Future<Pagination> getPopularMovies(int? page);
  Future<Pagination<MovieResource>> getUpcomingMovies(int? page);
  Future<Pagination<MovieResource>> getTopRatedMovies(int? page);
  Future<Pagination<MovieResource>> getNowPlayingMovies(int? page);
  Future<MovieResource> getMovieDetails(int movieId);
  Future<MovieResource> getLatestMovie();
  Future<Pagination<MovieResource>> getSimilarMovies(int movieId, int? page);
  Future<KeywordsResource> getMovieKeywords(int movieId);
  Future<TrailersResource> getMovieTrailers(int movieId);
  Future<Pagination<MovieResource>> getMovieRecommendations(
      int movieId, int? page);
  Future<ApiResponse> rateMovie(int movieId, double rate);
  Future<ApiResponse> deleteMovieRating(int movieId);
  Future<Pagination<ReviewResource>> getMovieReviews(int movieId, int? page);

  Future<Pagination<SeriesResource>> getOnTheAirSeries(int? page);
  Future<Pagination<SeriesResource>> getAiringTodaySeries(int? page);
  Future<Pagination<SeriesResource>> getPopularSeries(int? page);
  Future<Pagination<SeriesResource>> getTopRatedSeries(int? page);
  Future<SeriesResource> getSeriesDetails(int seriesId);
  Future<ImagesResource> getSeriesImages(int seriesId);
  Future<Pagination<SeriesResource>> getSimilarSeries(int seriesId, int? page);
  Future<TrailersResource> getSeriesTrailers(int seriesId);
  Future<Pagination<SeriesResource>> getSeriesRecommendations(
      int seriesId, int? page);
  Future<SeriesResource> getLatestSeries();
  Future<KeywordsResource> getSeriesKeywords(int seriesId);
  Future<Pagination<ReviewResource>> getSeriesReviews(int seriesId, int? page);
  Future<ApiResponse> rateSeries(int seriesId, double rate);
  Future<SeasonResource> getSeasonDetails(int seriesId, int seasonNumber);
  Future<ImagesResource> getSeasonImages(int seriesId, int seasonNumber);
  Future<EpisodeResource> getEpisodeDetails(
      int seriesId, int season, int episode);
  Future<ImagesResource> getEpisodeImages(
      int seriesId, int season, int episode);
  Future<TrailersResource> getEpisodeTrailers(
      int seriesId, int season, int episode);
  Future<ApiResponse> rateEpisode(
      int seriesId, int season, int episode, double rate);

  Future<KeywordResource> getKeywordById(int keywordId);
  Future<Pagination<MovieResource>> getMoviesByKeyword(
      int keywordId, int? page);

  Future<ApiResponse> createList(CreateListRequest createListRequest);
  Future<ApiResponse> deleteList(int listId);
  Future<ApiResponse> clearList(int listId);
  Future<CustomListDetailsResource> getListDetails(int listId);
  Future<ApiResponse> addItemsToList(int listId, int mediaId);
  Future<ApiResponse> removeItemsFromList(int listId, int mediaId);

  Future<Pagination<MovieResource>> search(String query, int? page);
  Future<Pagination<MovieResource>> searchMovies(String query, int? page);
  Future<Pagination<SeriesResource>> searchSeries(String query, int? page);
  Future<Pagination<PersonResource>> searchPeople(String query, int? page);

  Future<AccountResource> getAccountDetails();
  Future<ApiResponse> markAsFavorite(MarkAsFavoriteRequest requestBody);
  Future<Pagination<SeriesResource>> getFavoriteSeries(int? page);
  Future<Pagination<MovieResource>> getFavoriteMovies(int? page);
  Future<ApiResponse> addToWatchlist(AddToWatchListRequest requestBody);
  Future<Pagination<SeriesResource>> getSeriesWatchlist(int? page);
  Future<Pagination<MovieResource>> getMoviesWatchlist(int? page);

  Future<Pagination<MovieResource>> discoverMovies(
    int? page,
    String? sortBy,
    double? rate,
    int? year,
  );
}
