package com.red_velvet.flix.data.remote

import com.red_velvet.flix.BuildConfig
import com.red_velvet.flix.data.local.shared_prefs.SharedPrefs
import okhttp3.HttpUrl
import okhttp3.Interceptor
import okhttp3.Request
import okhttp3.Response
import javax.inject.Inject

class AuthorizationInterceptor @Inject constructor(
    private val sharedPrefs: SharedPrefs
) : Interceptor {

    private val apiKey: String = BuildConfig.API_KEY

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val newRequest = request.newBuilder()
            .url(buildUrl(request))
            .build()

        return chain.proceed(newRequest)
    }

    private fun buildUrl(request: Request): HttpUrl {
        return request.url.newBuilder()
            .addQueryParameter(API_KEY, apiKey)
            .addQueryParameter(REQUEST_TOKEN, sharedPrefs.getToken())
            .addQueryParameter(SESSION_ID, sharedPrefs.getSessionId())
            .build()
    }

    companion object {
        const val API_KEY = "api_key"
        const val REQUEST_TOKEN = "request_token"
        const val SESSION_ID = "session_id"
    }
}
