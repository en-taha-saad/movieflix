package com.red_velvet.flix.di

import com.red_velvet.flix.domain.repository.MovieRepository
import com.red_velvet.flix.domain.repository.SeriesRepository
import com.red_velvet.flix.domain.repository.UserRepository
import com.red_velvet.flix.repository.MovieRepositoryImpl
import com.red_velvet.flix.repository.SeriesRepositoryImpl
import com.red_velvet.flix.repository.UserRepositoryImp
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class RepositoryModule {

    @Singleton
    @Binds
    abstract fun bindMoviesRepository(moviesRepositoryImpl: MovieRepositoryImpl): MovieRepository

    @Singleton
    @Binds
    abstract fun bindSeriesRepository(seriesRepositoryImpl: SeriesRepositoryImpl): SeriesRepository

    @Singleton
    @Binds
    abstract fun bindUserRepository(userRepositoryImp: UserRepositoryImp): UserRepository

}