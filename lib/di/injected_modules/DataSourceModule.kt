package com.red_velvet.flix.di

import com.red_velvet.flix.data.local.LocalDataSourceImpl
import com.red_velvet.flix.data.local.PreferencesDataSourceImpl
import com.red_velvet.flix.data.remote.APIErrorHandler
import com.red_velvet.flix.data.remote.APIErrorHandlerImpl
import com.red_velvet.flix.data.remote.RemoteDataSourceImpl
import com.red_velvet.flix.repository.LocalDataSource
import com.red_velvet.flix.repository.PreferencesDataSource
import com.red_velvet.flix.repository.RemoteDataSource
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class DataSourceModule {
    @Singleton
    @Binds
    abstract fun bindRemoteDataSource(remoteDataSourceImpl: RemoteDataSourceImpl): RemoteDataSource

    @Singleton
    @Binds
    abstract fun bindLocalDataSource(localDataSourceImpl: LocalDataSourceImpl): LocalDataSource

    @Singleton
    @Binds
    abstract fun bindPreferencesDataSource(preferencesDataSourceImpl: PreferencesDataSourceImpl): PreferencesDataSource

    @Singleton
    @Binds
    abstract fun bindAPIErrorHandler(apiErrorHandlerImpl: APIErrorHandlerImpl): APIErrorHandler
}