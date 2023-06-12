package com.red_velvet.flix.repository

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


interface RemoteDataSource {
    suspend fun getRequestToken(): TokenResource
    suspend fun validateRequestTokenWithLogin(loginRequest: LoginRequest): TokenResource
    suspend fun createSession(requestToken: String): SessionResource
    suspend fun createGuestSession(): GuestSessionResource
    suspend fun deleteSession(sessionId: String): ApiResponse

    suspend fun getPopularMovies(page: Int?): Pagination<MovieResource>
    suspend fun getUpcomingMovies(page: Int?): Pagination<MovieResource>
    suspend fun getTopRatedMovies(page: Int?): Pagination<MovieResource>
    suspend fun getNowPlayingMovies(page: Int?): Pagination<MovieResource>
    suspend fun getMovieDetails(movieId: Int): MovieResource
    suspend fun getLatestMovie(): MovieResource
    suspend fun getSimilarMovies(movieId: Int, page: Int?): Pagination<MovieResource>
    suspend fun getMovieKeywords(movieId: Int): KeywordsResource
    suspend fun getMovieTrailers(movieId: Int): TrailersResource
    suspend fun getMovieRecommendations(movieId: Int, page: Int?): Pagination<MovieResource>
    suspend fun rateMovie(movieId: Int, rate: Float): ApiResponse
    suspend fun deleteMovieRating(movieId: Int): ApiResponse
    suspend fun getMovieReviews(movieId: Int, page: Int?): Pagination<ReviewResource>

    suspend fun getOnTheAirSeries(page: Int?): Pagination<SeriesResource>
    suspend fun getAiringTodaySeries(page: Int?): Pagination<SeriesResource>
    suspend fun getPopularSeries(page: Int?): Pagination<SeriesResource>
    suspend fun getTopRatedSeries(page: Int?): Pagination<SeriesResource>
    suspend fun getSeriesDetails(seriesId: Int): SeriesResource
    suspend fun getSeriesImages(seriesId: Int): ImagesResource
    suspend fun getSimilarSeries(seriesId: Int, page: Int?): Pagination<SeriesResource>
    suspend fun getSeriesTrailers(seriesId: Int): TrailersResource
    suspend fun getSeriesRecommendations(seriesId: Int, page: Int?): Pagination<SeriesResource>
    suspend fun getLatestSeries(): SeriesResource
    suspend fun getSeriesKeywords(seriesId: Int): KeywordsResource
    suspend fun getSeriesReviews(seriesId: Int, page: Int?): Pagination<ReviewResource>
    suspend fun rateSeries(seriesId: Int, rate: Float): ApiResponse
    suspend fun getSeasonDetails(seriesId: Int, seasonNumber: Int): SeasonResource
    suspend fun getSeasonImages(seriesId: Int, seasonNumber: Int): ImagesResource
    suspend fun getEpisodeDetails(seriesId: Int, season: Int, episode: Int): EpisodeResource
    suspend fun getEpisodeImages(seriesId: Int, season: Int, episode: Int): ImagesResource
    suspend fun getEpisodeTrailers(seriesId: Int, season: Int, episode: Int): TrailersResource
    suspend fun rateEpisode(seriesId: Int, season: Int, episode: Int, rate: Float): ApiResponse

    suspend fun getKeywordById(keywordId: Int): KeywordResource
    suspend fun getMoviesByKeyword(keywordId: Int, page: Int?): Pagination<MovieResource>

    suspend fun createList(createListRequest: CreateListRequest): ApiResponse
    suspend fun deleteList(listId: Int): ApiResponse
    suspend fun clearList(listId: Int): ApiResponse
    suspend fun getListDetails(listId: Int): CustomListDetailsResource
    suspend fun addItemsToList(listId: Int, mediaId: Int): ApiResponse
    suspend fun removeItemsFromList(listId: Int, mediaId: Int): ApiResponse

    suspend fun search(query: String, page: Int?): Pagination<MovieResource>
    suspend fun searchMovies(query: String, page: Int?): Pagination<MovieResource>
    suspend fun searchSeries(query: String, page: Int?): Pagination<SeriesResource>
    suspend fun searchPeople(query: String, page: Int?): Pagination<PersonResource>

    suspend fun getAccountDetails(): AccountResource
    suspend fun markAsFavorite(requestBody: MarkAsFavoriteRequest): ApiResponse
    suspend fun getFavoriteSeries(page: Int?): Pagination<SeriesResource>
    suspend fun getFavoriteMovies(page: Int?): Pagination<MovieResource>
    suspend fun addToWatchlist(requestBody: AddToWatchListRequest): ApiResponse
    suspend fun getSeriesWatchlist(page: Int?): Pagination<SeriesResource>
    suspend fun getMoviesWatchlist(page: Int?): Pagination<MovieResource>

    suspend fun discoverMovies(
        page: Int?,
        sortBy: String?,
        rate: Float?,
        year: Int?
    ): Pagination<MovieResource>

}