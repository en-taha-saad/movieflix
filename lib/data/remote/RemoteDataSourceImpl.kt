package com.red_velvet.flix.data.remote

import com.red_velvet.flix.data.remote.recoures.ApiResponse
import com.red_velvet.flix.data.remote.recoures.KeywordResource
import com.red_velvet.flix.data.remote.recoures.Pagination
import com.red_velvet.flix.data.remote.recoures.account.AccountResource
import com.red_velvet.flix.data.remote.recoures.account.AddToWatchListRequest
import com.red_velvet.flix.data.remote.recoures.account.MarkAsFavoriteRequest
import com.red_velvet.flix.data.remote.recoures.auth.GuestSessionResource
import com.red_velvet.flix.data.remote.recoures.auth.LoginRequest
import com.red_velvet.flix.data.remote.recoures.auth.SessionResource
import com.red_velvet.flix.data.remote.recoures.auth.TokenResource
import com.red_velvet.flix.data.remote.recoures.image.ImagesResource
import com.red_velvet.flix.data.remote.recoures.list.CreateListRequest
import com.red_velvet.flix.data.remote.recoures.list.CustomListDetailsResource
import com.red_velvet.flix.data.remote.recoures.movie.KeywordsResource
import com.red_velvet.flix.data.remote.recoures.movie.MovieResource
import com.red_velvet.flix.data.remote.recoures.person.PersonResource
import com.red_velvet.flix.data.remote.recoures.review.ReviewResource
import com.red_velvet.flix.data.remote.recoures.series.EpisodeResource
import com.red_velvet.flix.data.remote.recoures.series.SeasonResource
import com.red_velvet.flix.data.remote.recoures.series.SeriesResource
import com.red_velvet.flix.data.remote.recoures.trailer.TrailersResource
import com.red_velvet.flix.domain.utils.FlixException
import com.red_velvet.flix.repository.RemoteDataSource
import okhttp3.internal.http2.ConnectionShutdownException
import retrofit2.Response
import java.io.IOException
import java.net.SocketTimeoutException
import java.net.UnknownHostException
import javax.inject.Inject

class RemoteDataSourceImpl @Inject constructor(
    private val apiService: APIService,
    private val apiErrorHandler: APIErrorHandler
) : RemoteDataSource {
    override suspend fun getRequestToken(): TokenResource {
        return wrapApiCall { apiService.getRequestToken() }
    }

    override suspend fun validateRequestTokenWithLogin(loginRequest: LoginRequest): TokenResource {
        return wrapApiCall { apiService.validateRequestTokenWithLogin(loginRequest) }
    }

    override suspend fun createSession(requestToken: String): SessionResource {
        return wrapApiCall { apiService.createSession(requestToken) }
    }

    override suspend fun createGuestSession(): GuestSessionResource {
        return wrapApiCall { apiService.createGuestSession() }
    }

    override suspend fun deleteSession(sessionId: String): ApiResponse {
        return wrapApiCall { apiService.deleteSession(sessionId) }
    }

    override suspend fun getPopularMovies(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getPopularMovies(page) }
    }

    override suspend fun getUpcomingMovies(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getUpcomingMovies(page) }
    }

    override suspend fun getTopRatedMovies(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getTopRatedMovies(page) }
    }

    override suspend fun getNowPlayingMovies(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getNowPlayingMovies(page) }
    }

    override suspend fun getMovieDetails(movieId: Int): MovieResource {
        return wrapApiCall { apiService.getMovieDetails(movieId) }
    }

    override suspend fun getLatestMovie(): MovieResource {
        return wrapApiCall { apiService.getLatestMovie() }
    }

    override suspend fun getSimilarMovies(movieId: Int, page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getSimilarMovies(movieId, page) }
    }

    override suspend fun getMovieKeywords(movieId: Int): KeywordsResource {
        return wrapApiCall { apiService.getMovieKeywords(movieId) }
    }

    override suspend fun getMovieTrailers(movieId: Int): TrailersResource {
        return wrapApiCall { apiService.getMovieTrailers(movieId) }
    }

    override suspend fun getMovieRecommendations(
        movieId: Int,
        page: Int?
    ): Pagination<MovieResource> {
        return wrapApiCall { apiService.getMovieRecommendations(movieId, page) }
    }

    override suspend fun rateMovie(movieId: Int, rate: Float): ApiResponse {
        return wrapApiCall { apiService.rateMovie(movieId, rate) }
    }

    override suspend fun deleteMovieRating(movieId: Int): ApiResponse {
        return wrapApiCall { apiService.deleteMovieRating(movieId) }
    }

    override suspend fun getMovieReviews(movieId: Int, page: Int?): Pagination<ReviewResource> {
        return wrapApiCall { apiService.getMovieReviews(movieId, page) }
    }

    override suspend fun getOnTheAirSeries(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getOnTheAirSeries(page) }
    }

    override suspend fun getAiringTodaySeries(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getAiringTodaySeries(page) }
    }

    override suspend fun getPopularSeries(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getPopularSeries(page) }
    }

    override suspend fun getTopRatedSeries(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getTopRatedSeries(page) }
    }

    override suspend fun getSeriesDetails(seriesId: Int): SeriesResource {
        return wrapApiCall { apiService.getSeriesDetails(seriesId) }
    }

    override suspend fun getSeriesImages(seriesId: Int): ImagesResource {
        return wrapApiCall { apiService.getSeriesImages(seriesId) }
    }

    override suspend fun getSimilarSeries(seriesId: Int, page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getSimilarSeries(seriesId, page) }
    }

    override suspend fun getSeriesTrailers(seriesId: Int): TrailersResource {
        return wrapApiCall { apiService.getSeriesTrailers(seriesId) }
    }

    override suspend fun getSeriesRecommendations(
        seriesId: Int,
        page: Int?
    ): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getSeriesRecommendations(seriesId, page) }
    }

    override suspend fun getLatestSeries(): SeriesResource {
        return wrapApiCall { apiService.getLatestSeries() }
    }

    override suspend fun getSeriesKeywords(seriesId: Int): KeywordsResource {
        return wrapApiCall { apiService.getSeriesKeywords(seriesId) }
    }

    override suspend fun getSeriesReviews(seriesId: Int, page: Int?): Pagination<ReviewResource> {
        return wrapApiCall { apiService.getSeriesReviews(seriesId, page) }
    }

    override suspend fun rateSeries(seriesId: Int, rate: Float): ApiResponse {
        return wrapApiCall { apiService.rateSeries(seriesId, rate) }
    }

    override suspend fun getSeasonDetails(seriesId: Int, seasonNumber: Int): SeasonResource {
        return wrapApiCall { apiService.getSeasonDetails(seriesId, seasonNumber) }
    }

    override suspend fun getSeasonImages(seriesId: Int, seasonNumber: Int): ImagesResource {
        return wrapApiCall { apiService.getSeasonImages(seriesId, seasonNumber) }
    }

    override suspend fun getEpisodeDetails(
        seriesId: Int,
        season: Int,
        episode: Int
    ): EpisodeResource {
        return wrapApiCall { apiService.getEpisodeDetails(seriesId, season, episode) }
    }

    override suspend fun getEpisodeImages(
        seriesId: Int,
        season: Int,
        episode: Int
    ): ImagesResource {
        return wrapApiCall { apiService.getEpisodeImages(seriesId, season, episode) }
    }

    override suspend fun getEpisodeTrailers(
        seriesId: Int,
        season: Int,
        episode: Int
    ): TrailersResource {
        return wrapApiCall { apiService.getEpisodeTrailers(seriesId, season, episode) }
    }

    override suspend fun rateEpisode(
        seriesId: Int,
        season: Int,
        episode: Int,
        rate: Float
    ): ApiResponse {
        return wrapApiCall { apiService.rateEpisode(seriesId, season, episode, rate) }
    }

    override suspend fun getKeywordById(keywordId: Int): KeywordResource {
        return wrapApiCall { apiService.getKeywordById(keywordId) }
    }

    override suspend fun getMoviesByKeyword(keywordId: Int, page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getMoviesByKeyword(keywordId, page) }
    }

    override suspend fun createList(createListRequest: CreateListRequest): ApiResponse {
        return wrapApiCall { apiService.createList(createListRequest) }
    }

    override suspend fun deleteList(listId: Int): ApiResponse {
        return wrapApiCall { apiService.deleteList(listId) }
    }

    override suspend fun clearList(listId: Int): ApiResponse {
        return wrapApiCall { apiService.clearList(listId) }
    }

    override suspend fun getListDetails(listId: Int): CustomListDetailsResource {
        return wrapApiCall { apiService.getListDetails(listId) }
    }

    override suspend fun addItemsToList(listId: Int, mediaId: Int): ApiResponse {
        return wrapApiCall { apiService.addItemToList(listId, mediaId) }
    }

    override suspend fun removeItemsFromList(listId: Int, mediaId: Int): ApiResponse {
        return wrapApiCall { apiService.removeItemFromList(listId, mediaId) }
    }

    override suspend fun search(query: String, page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.search(query, page) }
    }

    override suspend fun searchMovies(query: String, page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.searchMovies(query, page) }
    }

    override suspend fun searchSeries(query: String, page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.searchSeries(query, page) }
    }

    override suspend fun searchPeople(query: String, page: Int?): Pagination<PersonResource> {
        return wrapApiCall { apiService.searchPeople(query, page) }
    }

    override suspend fun getAccountDetails(): AccountResource {
        return wrapApiCall { apiService.getAccountDetails() }
    }

    override suspend fun markAsFavorite(requestBody: MarkAsFavoriteRequest): ApiResponse {
        return wrapApiCall { apiService.markAsFavorite(requestBody) }
    }

    override suspend fun getFavoriteSeries(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getFavoriteSeries(page) }
    }

    override suspend fun getFavoriteMovies(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getFavoriteMovies(page) }
    }

    override suspend fun addToWatchlist(requestBody: AddToWatchListRequest): ApiResponse {
        return wrapApiCall { apiService.addToWatchlist(requestBody) }
    }

    override suspend fun getSeriesWatchlist(page: Int?): Pagination<SeriesResource> {
        return wrapApiCall { apiService.getSeriesWatchlist(page) }
    }

    override suspend fun getMoviesWatchlist(page: Int?): Pagination<MovieResource> {
        return wrapApiCall { apiService.getMoviesWatchlist(page) }
    }

    override suspend fun discoverMovies(
        page: Int?,
        sortBy: String?,
        rate: Float?,
        year: Int?
    ): Pagination<MovieResource> {
        return wrapApiCall { apiService.discoverMovies(page, sortBy, rate, year) }
    }

    private suspend fun <T> wrapApiCall(call: suspend () -> Response<T>): T {
        try {
            val response = call()
            if (response.isSuccessful) return response.body()!!
            throw apiErrorHandler.getFlixException(response.errorBody())
        } catch (e: SocketTimeoutException) {
            throw FlixException.TimeOut
        } catch (e: UnknownHostException) {
            throw FlixException.NoInternet
        } catch (e: ConnectionShutdownException) {
            throw FlixException.NoInternet
        } catch (e: IOException) {
            throw FlixException.NoInternet
        }
    }
}