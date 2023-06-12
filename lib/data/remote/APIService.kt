package com.red_velvet.flix.data.remote

import com.red_velvet.flix.data.remote.recoures.*
import com.red_velvet.flix.data.remote.recoures.account.*
import com.red_velvet.flix.data.remote.recoures.auth.*
import com.red_velvet.flix.data.remote.recoures.image.ImagesResource
import com.red_velvet.flix.data.remote.recoures.list.*
import com.red_velvet.flix.data.remote.recoures.movie.*
import com.red_velvet.flix.data.remote.recoures.person.PersonResource
import com.red_velvet.flix.data.remote.recoures.review.ReviewResource
import com.red_velvet.flix.data.remote.recoures.series.*
import com.red_velvet.flix.data.remote.recoures.trailer.TrailersResource
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.Field
import retrofit2.http.FormUrlEncoded
import retrofit2.http.GET
import retrofit2.http.HTTP
import retrofit2.http.POST
import retrofit2.http.Path
import retrofit2.http.Query

interface APIService {
    @GET("authentication/token/new")
    suspend fun getRequestToken(): Response<TokenResource>

    @POST("authentication/token/validate_with_login")
    suspend fun validateRequestTokenWithLogin(@Body loginRequest: LoginRequest): Response<TokenResource>

    @FormUrlEncoded
    @POST("authentication/session/new")
    suspend fun createSession(@Field("request_token") requestToken: String): Response<SessionResource>

    @GET("authentication/guest_session/new")
    suspend fun createGuestSession(): Response<GuestSessionResource>

    @FormUrlEncoded
    @HTTP(method = "DELETE", path = "authentication/session", hasBody = true)
    suspend fun deleteSession(@Field("session_id") sessionId: String): Response<ApiResponse>


    @GET("movie/popular")
    suspend fun getPopularMovies(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("movie/upcoming")
    suspend fun getUpcomingMovies(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("movie/top_rated")
    suspend fun getTopRatedMovies(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("movie/now_playing")
    suspend fun getNowPlayingMovies(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("movie/{movie_id}")
    suspend fun getMovieDetails(
        @Path("movie_id") movieId: Int,
    ): Response<MovieResource>

    @GET("movie/latest")
    suspend fun getLatestMovie(): Response<MovieResource>

    @GET("movie/{movie_id}/similar")
    suspend fun getSimilarMovies(
        @Path("movie_id") movieId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("movie/{movie_id}/keywords")
    suspend fun getMovieKeywords(@Path("movie_id") movieId: Int): Response<KeywordsResource>

    @GET("movie/{movie_id}/videos")
    suspend fun getMovieTrailers(
        @Path("movie_id") movieId: Int,
    ): Response<TrailersResource>

    @GET("movie/{movie_id}/recommendations")
    suspend fun getMovieRecommendations(
        @Path("movie_id") movieId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @FormUrlEncoded
    @POST("movie/{movie_id}/rating")
    suspend fun rateMovie(
        @Path("movie_id") movieId: Int,
        @Field("value") rating: Float
    ): Response<ApiResponse>

    @DELETE("movie/{movie_id}/rating")
    suspend fun deleteMovieRating(@Path("movie_id") movieId: Int): Response<ApiResponse>

    @GET("movie/{movie_id}/reviews")
    suspend fun getMovieReviews(
        @Path("movie_id") movieId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<ReviewResource>>


    @GET("tv/on_the_air")
    suspend fun getOnTheAirSeries(
        @Query("page") page: Int? = 1,
        @Query("timezone") timezone: String? = null
    ): Response<Pagination<SeriesResource>>

    @GET("tv/airing_today")
    suspend fun getAiringTodaySeries(
        @Query("page") page: Int? = 1,
        @Query("timezone") timezone: String? = null
    ): Response<Pagination<SeriesResource>>

    @GET("tv/popular")
    suspend fun getPopularSeries(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<SeriesResource>>

    @GET("tv/top_rated")
    suspend fun getTopRatedSeries(
        @Query("page") page: Int? = 1,
    ): Response<Pagination<SeriesResource>>

    @GET("tv/{tv_id}")
    suspend fun getSeriesDetails(
        @Path("tv_id") seriesId: Int,
    ): Response<SeriesResource>

    @GET("tv/{series_id}/images")
    suspend fun getSeriesImages(
        @Path("series_id") seriesId: Int,
    ): Response<ImagesResource>

    @GET("tv/{tv_id}/similar")
    suspend fun getSimilarSeries(
        @Path("tv_id") tvId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<SeriesResource>>

    @GET("tv/{series_id}/videos")
    suspend fun getSeriesTrailers(
        @Path("series_id") seriesId: Int,
    ): Response<TrailersResource>

    @GET("tv/{series_id}/recommendations")
    suspend fun getSeriesRecommendations(
        @Path("series_id") seriesId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<SeriesResource>>

    @GET("tv/latest")
    suspend fun getLatestSeries(): Response<SeriesResource>

    @GET("tv/{series_id}/keywords")
    suspend fun getSeriesKeywords(@Path("series_id") seriesId: Int): Response<KeywordsResource>

    @GET("tv/{series_id}/reviews")
    suspend fun getSeriesReviews(
        @Path("series_id") seriesId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<ReviewResource>>

    @FormUrlEncoded
    @POST("tv/{series_id}/rating")
    suspend fun rateSeries(
        @Path("series_id") seriesId: Int,
        @Field("value") rating: Float
    ): Response<ApiResponse>

    @GET("tv/{series_id}/season/{season_number}")
    suspend fun getSeasonDetails(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
    ): Response<SeasonResource>

    @GET("tv/{series_id}/season/{season_number}/images")
    suspend fun getSeasonImages(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
    ): Response<ImagesResource>

    @GET("tv/{series_id}/season/{season_number}/episode/{episode_number}")
    suspend fun getEpisodeDetails(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
        @Path("episode_number") episodeNumber: Int,
    ): Response<EpisodeResource>

    @GET("tv/{series_id}/season/{season_number}/episode/{episode_number}/images")
    suspend fun getEpisodeImages(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
        @Path("episode_number") episodeNumber: Int,
    ): Response<ImagesResource>

    @GET("tv/{series_id}/season/{season_number}/episode/{episode_number}/videos")
    suspend fun getEpisodeTrailers(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
        @Path("episode_number") episodeNumber: Int,
    ): Response<TrailersResource>

    @FormUrlEncoded
    @POST("tv/{series_id}/season/{season_number}/episode/{episode_number}/rating")
    suspend fun rateEpisode(
        @Path("series_id") seriesId: Int,
        @Path("season_number") seasonNumber: Int,
        @Path("episode_number") episodeNumber: Int,
        @Field("value") rating: Float
    ): Response<ApiResponse>


    @GET("discover/movie")
    suspend fun discoverMovies(
        @Query("page") page: Int? = 1,
        @Query("sort_by") sortBy: String? = "popularity.desc",
        @Query("vote_average.gte") voteAverageGte: Float? = null,
        @Query("year") year: Int? = null
    ): Response<Pagination<MovieResource>>


    @GET("keyword/{keyword_id}")
    suspend fun getKeywordById(@Path("keyword_id") keywordId: Int): Response<KeywordResource>

    @GET("keyword/{keyword_id}/movies")
    suspend fun getMoviesByKeyword(
        @Path("keyword_id") keywordId: Int,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>


    @POST("list")
    suspend fun createList(@Body createListRequest: CreateListRequest): Response<ApiResponse>

    @DELETE("list/{list_id}")
    suspend fun deleteList(@Path("list_id") listId: Int): Response<ApiResponse>

    @POST("list/{list_id}")
    suspend fun clearList(
        @Path("list_id") listId: Int,
        @Query("confirm") confirm: Boolean = true
    ): Response<ApiResponse>

    @GET("list/{list_id}")
    suspend fun getListDetails(@Path("list_id") listId: Int): Response<CustomListDetailsResource>

    @FormUrlEncoded
    @POST("list/{list_id}/remove_item")
    suspend fun removeItemFromList(
        @Path("list_id") listId: Int,
        @Field("media_id") mediaId: Int
    ): Response<ApiResponse>

    @FormUrlEncoded
    @POST("list/{list_id}/add_item")
    suspend fun addItemToList(
        @Path("list_id") listId: Int,
        @Field("media_id") mediaId: Int
    ): Response<ApiResponse>


    @GET("search/multi")
    suspend fun search(
        @Query("query") query: String,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("search/movie")
    suspend fun searchMovies(
        @Query("query") query: String,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<MovieResource>>

    @GET("search/person")
    suspend fun searchPeople(
        @Query("query") query: String,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<PersonResource>>

    @GET("search/tv")
    suspend fun searchSeries(
        @Query("query") query: String,
        @Query("page") page: Int? = 1,
    ): Response<Pagination<SeriesResource>>


    @GET("account")
    suspend fun getAccountDetails(): Response<AccountResource>

    @POST("account/favorite")
    suspend fun markAsFavorite(
        @Body markAsFavoriteRequest: MarkAsFavoriteRequest
    ): Response<ApiResponse>

    @GET("account/favorite/tv")
    suspend fun getFavoriteSeries(
        @Query("page") page: Int? = 1,
        @Query("sort_by") sortBy: String? = "created_at.asc"
    ): Response<Pagination<SeriesResource>>

    @GET("account/favorite/movies")
    suspend fun getFavoriteMovies(
        @Query("page") page: Int? = 1,
        @Query("sort_by") sortBy: String? = "created_at.asc"
    ): Response<Pagination<MovieResource>>

    @POST("account/watchlist")
    suspend fun addToWatchlist(
        @Body addToWatchlistRequest: AddToWatchListRequest
    ): Response<ApiResponse>

    @GET("account/watchlist/tv")
    suspend fun getSeriesWatchlist(
        @Query("page") page: Int? = 1,
        @Query("sort_by") sortBy: String? = "created_at.asc"
    ): Response<Pagination<SeriesResource>>

    @GET("account/watchlist/movies")
    suspend fun getMoviesWatchlist(
        @Query("page") page: Int? = 1,
        @Query("sort_by") sortBy: String? = "created_at.asc"
    ): Response<Pagination<MovieResource>>
}