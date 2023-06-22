import 'package:dio/dio.dart';
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
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "{baseUrl}", parser: Parser.JsonSerializable)
abstract class APIService {
  final Dio dio;
  APIService(this.dio);

  @GET("/authentication/token/new")
  Future<TokenResource> getRequestToken();

  @POST("/authentication/token/validate_with_login")
  Future<TokenResource> validateRequestTokenWithLogin(
      @Body() LoginRequest loginRequest);

  @FormUrlEncoded()
  @POST("/authentication/session/new")
  Future<SessionResource> createSession(
      @Field("request_token") String requestToken);

  @GET("/authentication/guest_session/new")
  Future<GuestSessionResource> createGuestSession();

  @FormUrlEncoded()
  @DELETE("/authentication/session")
  Future<ApiResponse> deleteSession(@Field("session_id") String sessionId);

  @GET("/movie/popular")
  Future<Pagination<MovieResource>> getPopularMovies(@Query("page") int? page);

  @GET("/movie/upcoming")
  Future<Pagination<MovieResource>> getUpcomingMovies(@Query("page") int? page);

  @GET("/movie/top_rated")
  Future<Pagination<MovieResource>> getTopRatedMovies(@Query("page") int? page);

  @GET("/movie/now_playing")
  Future<Pagination<MovieResource>> getNowPlayingMovies(
      @Query("page") int? page);

  @GET("/movie/{movie_id}")
  Future<MovieResource> getMovieDetails(@Path("movie_id") int movieId);

  @GET("/movie/latest")
  Future<MovieResource> getLatestMovie();

  @GET("/movie/{movie_id}/similar")
  Future<Pagination<MovieResource>> getSimilarMovies(
      @Path("movie_id") int movieId, @Query("page") int? page);

  @GET("/movie/{movie_id}/keywords")
  Future<KeywordsResource> getMovieKeywords(@Path("movie_id") int movieId);

  @GET("/movie/{movie_id}/videos")
  Future<TrailersResource> getMovieTrailers(@Path("movie_id") int movieId);

  @GET("/movie/{movie_id}/recommendations")
  Future<Pagination<MovieResource>> getMovieRecommendations(
      @Path("movie_id") int movieId, @Query("page") int? page);

  @FormUrlEncoded()
  @POST("/movie/{movie_id}/rating")
  Future<ApiResponse> rateMovie(
      @Path("movie_id") int movieId, @Field("value") double rating);

  @DELETE("/movie/{movie_id}/rating")
  Future<ApiResponse> deleteMovieRating(@Path("movie_id") int movieId);

  @GET("/movie/{movie_id}/reviews")
  Future<Pagination<ReviewResource>> getMovieReviews(
      @Path("movie_id") int movieId, @Query("page") int? page);

  @GET("/tv/on_the_air")
  Future<Pagination<SeriesResource>> getOnTheAirSeries(
      @Query("page") int? page, @Query("timezone") String? timezone);

  @GET("/tv/airing_today")
  Future<Pagination<SeriesResource>> getAiringTodaySeries(
      @Query("page") int? page, @Query("timezone") String? timezone);

  @GET("/tv/popular")
  Future<Pagination<SeriesResource>> getPopularSeries(@Query("page") int? page);

  @GET("/tv/top_rated")
  Future<Pagination<SeriesResource>> getTopRatedSeries(
      @Query("page") int? page);

  @GET("/tv/{tv_id}")
  Future<SeriesResource> getSeriesDetails(@Path("tv_id") int seriesId);

  @GET("/tv/{series_id}/images")
  Future<ImagesResource> getSeriesImages(@Path("series_id") int seriesId);

  @GET("/tv/{tv_id}/similar")
  Future<Pagination<SeriesResource>> getSimilarSeries(
      @Path("tv_id") int tvId, @Query("page") int? page);

  @GET("/tv/{series_id}/videos")
  Future<TrailersResource> getSeriesTrailers(@Path("series_id") int seriesId);

  @GET("/tv/{series_id}/recommendations")
  Future<Pagination<SeriesResource>> getSeriesRecommendations(
      @Path("series_id") int seriesId, @Query("page") int? page);

  @GET("/tv/latest")
  Future<SeriesResource> getLatestSeries();

  @GET("/tv/{series_id}/keywords")
  Future<KeywordsResource> getSeriesKeywords(@Path("series_id") int seriesId);

  @GET("/tv/{series_id}/reviews")
  Future<Pagination<ReviewResource>> getSeriesReviews(
      @Path("series_id") int seriesId, @Query("page") int? page);

  @FormUrlEncoded()
  @POST("/tv/{series_id}/rating")
  Future<ApiResponse> rateSeries(
      @Path("series_id") int seriesId, @Field("value") double rating);

  @GET("/tv/{series_id}/season/{season_number}")
  Future<SeasonResource> getSeasonDetails(
      @Path("series_id") int seriesId, @Path("season_number") int seasonNumber);

  @GET("/tv/{series_id}/season/{season_number}/images")
  Future<ImagesResource> getSeasonImages(
      @Path("series_id") int seriesId, @Path("season_number") int seasonNumber);

  @GET("/tv/{series_id}/season/{season_number}/episode/{episode_number}")
  Future<EpisodeResource> getEpisodeDetails(
      @Path("series_id") int seriesId,
      @Path("season_number") int seasonNumber,
      @Path("episode_number") int episodeNumber);

  @GET("/tv/{series_id}/season/{season_number}/episode/{episode_number}/images")
  Future<ImagesResource> getEpisodeImages(
      @Path("series_id") int seriesId,
      @Path("season_number") int seasonNumber,
      @Path("episode_number") int episodeNumber);

  @GET("/tv/{series_id}/season/{season_number}/episode/{episode_number}/videos")
  Future<TrailersResource> getEpisodeTrailers(
      @Path("series_id") int seriesId,
      @Path("season_number") int seasonNumber,
      @Path("episode_number") int episodeNumber);

  @FormUrlEncoded()
  @POST(
      "/tv/{series_id}/season/{season_number}/episode/{episode_number}/rating")
  Future<ApiResponse> rateEpisode(
      @Path("series_id") int seriesId,
      @Path("season_number") int seasonNumber,
      @Path("episode_number") int episodeNumber,
      @Field("value") double rating);

  @GET("/discover/movie")
  Future<Pagination<MovieResource>> discoverMovies(
      @Query("page") int? page,
      @Query("sort_by") String? sortBy,
      @Query("vote_average.gte") double? voteAverageGte,
      @Query("year") int? year);

  @GET("/keyword/{keyword_id}")
  Future<KeywordResource> getKeywordById(@Path("keyword_id") int keywordId);

  @GET("/keyword/{keyword_id}/movies")
  Future<Pagination<MovieResource>> getMoviesByKeyword(
      @Path("keyword_id") int keywordId, @Query("page") int? page);

  @POST("/list")
  Future<ApiResponse> createList(@Body() CreateListRequest createListRequest);

  @DELETE("/list/{list_id}")
  Future<ApiResponse> deleteList(@Path("list_id") int listId);

  @POST("/list/{list_id}")
  Future<ApiResponse> clearList(
      @Path("list_id") int listId, @Query("confirm") bool confirm);

  @GET("/list/{list_id}")
  Future<CustomListDetailsResource> getListDetails(@Path("list_id") int listId);

  @FormUrlEncoded()
  @POST("/list/{list_id}/remove_item")
  Future<ApiResponse> removeItemFromList(
      @Path("list_id") int listId, @Field("media_id") int mediaId);

  @FormUrlEncoded()
  @POST("/list/{list_id}/add_item")
  Future<ApiResponse> addItemToList(
      @Path("list_id") int listId, @Field("media_id") int mediaId);

  @GET("/search/multi")
  Future<Pagination<MovieResource>> search(
      @Query("query") String query, @Query("page") int? page);

  @GET("/search/movie")
  Future<Pagination<MovieResource>> searchMovies(
      @Query("query") String query, @Query("page") int? page);

  @GET("/search/person")
  Future<Pagination<PersonResource>> searchPeople(
      @Query("query") String query, @Query("page") int? page);

  @GET("/search/tv")
  Future<Pagination<SeriesResource>> searchSeries(
      @Query("query") String query, @Query("page") int? page);

  @GET("/account")
  Future<AccountResource> getAccountDetails();

  @POST("/account/favorite")
  Future<ApiResponse> markAsFavorite(
      @Body() MarkAsFavoriteRequest markAsFavoriteRequest);

  @GET("/account/favorite/tv")
  Future<Pagination<SeriesResource>> getFavoriteSeries(
      @Query("page") int? page, @Query("sort_by") String? sortBy);

  @GET("/account/favorite/movies")
  Future<Pagination<MovieResource>> getFavoriteMovies(
      @Query("page") int? page, @Query("sort_by") String? sortBy);

  @POST("/account/watchlist")
  Future<ApiResponse> addToWatchlist(
      @Body() AddToWatchListRequest addToWatchlistRequest);

  @GET("/account/watchlist/tv")
  Future<Pagination<SeriesResource>> getSeriesWatchlist(
      @Query("page") int? page, @Query("sort_by") String? sortBy);

  @GET("/account/watchlist/movies")
  Future<Pagination<MovieResource>> getMoviesWatchlist(
      @Query("page") int? page, @Query("sort_by") String? sortBy);
}
