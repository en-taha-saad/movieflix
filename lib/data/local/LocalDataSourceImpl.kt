package com.red_velvet.flix.data.local

import com.red_velvet.flix.data.local.database.dao.MovieDao
import com.red_velvet.flix.data.local.database.dao.SeriesDao
import com.red_velvet.flix.data.local.database.dao.UserDao
import com.red_velvet.flix.data.local.database.entity.AiringTodaySeriesDto
import com.red_velvet.flix.data.local.database.entity.NowPlayingMovieDto
import com.red_velvet.flix.data.local.database.entity.OnTheAirSeriesDto
import com.red_velvet.flix.data.local.database.entity.PopularMovieDto
import com.red_velvet.flix.data.local.database.entity.PopularSeriesDto
import com.red_velvet.flix.data.local.database.entity.TopRatedMovieDto
import com.red_velvet.flix.data.local.database.entity.TopRatedSeriesDto
import com.red_velvet.flix.data.local.database.entity.UpcomingMovieDto
import com.red_velvet.flix.data.local.database.entity.UserDto
import com.red_velvet.flix.repository.LocalDataSource
import javax.inject.Inject

class LocalDataSourceImpl @Inject constructor(
    private val MovieDao: MovieDao,
    private val SeriesDao: SeriesDao,
    private val UserDao: UserDao
) : LocalDataSource {
    override suspend fun getPopularMovies(): List<PopularMovieDto> {
        return MovieDao.getPopularMovies()
    }

    override suspend fun getTopRatedMovies(): List<TopRatedMovieDto> {
        return MovieDao.getTopRatedMovies()
    }

    override suspend fun getNowPlayingMovies(): List<NowPlayingMovieDto> {
        return MovieDao.getNowPlayingMovies()
    }

    override suspend fun getUpcomingMovies(): List<UpcomingMovieDto> {
        return MovieDao.getUpcomingMovies()
    }

    override suspend fun insertPopularMovies(popularMovies: List<PopularMovieDto>) {
        MovieDao.insertPopularMovies(popularMovies)
    }

    override suspend fun insertTopRatedMovies(topRatedMovies: List<TopRatedMovieDto>) {
        MovieDao.insertTopRatedMovies(topRatedMovies)
    }

    override suspend fun insertNowPlayingMovies(nowPlayingMovies: List<NowPlayingMovieDto>) {
        MovieDao.insertNowPlayingMovies(nowPlayingMovies)
    }

    override suspend fun insertUpcomingMovies(upcomingMovies: List<UpcomingMovieDto>) {
        MovieDao.insertUpcomingMovies(upcomingMovies)
    }

    override suspend fun getPopularSeries(): List<PopularSeriesDto> {
        return SeriesDao.getPopularSeries()
    }

    override suspend fun getTopRatedSeries(): List<TopRatedSeriesDto> {
        return SeriesDao.getTopRatedSeries()
    }

    override suspend fun getOnTheAirSeries(): List<OnTheAirSeriesDto> {
        return SeriesDao.getOnTheAirSeries()
    }

    override suspend fun getAiringTodaySeries(): List<AiringTodaySeriesDto> {
        return SeriesDao.getAiringTodaySeries()
    }

    override suspend fun insertPopularSeries(popularSeries: List<PopularSeriesDto>) {
        SeriesDao.insertPopularSeries(popularSeries)
    }

    override suspend fun insertTopRatedSeries(topRatedSeries: List<TopRatedSeriesDto>) {
        SeriesDao.insertTopRatedSeries(topRatedSeries)
    }

    override suspend fun insertOnTheAirSeries(onTheAirSeries: List<OnTheAirSeriesDto>) {
        SeriesDao.insertOnTheAirSeries(onTheAirSeries)
    }

    override suspend fun insertAiringTodaySeries(airingTodaySeries: List<AiringTodaySeriesDto>) {
        SeriesDao.insertAiringTodaySeries(airingTodaySeries)
    }

    override suspend fun getUserData(): UserDto {
        return UserDao.getUserData()
    }

    override suspend fun insertUserData(userDto: UserDto) {
        UserDao.insertUserData(userDto)
    }
}