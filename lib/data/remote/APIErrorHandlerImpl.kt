package com.red_velvet.flix.data.remote

import com.google.gson.Gson
import com.red_velvet.flix.data.remote.TMDBStatusCode.ACCOUNT_DISABLED
import com.red_velvet.flix.data.remote.TMDBStatusCode.AUTHENTICATION_FAILED
import com.red_velvet.flix.data.remote.TMDBStatusCode.AUTHENTICATION_FAILED_2
import com.red_velvet.flix.data.remote.TMDBStatusCode.BACKEND_TIMEOUT
import com.red_velvet.flix.data.remote.TMDBStatusCode.CONNECTION_ERROR
import com.red_velvet.flix.data.remote.TMDBStatusCode.DEVICE_DENIED
import com.red_velvet.flix.data.remote.TMDBStatusCode.EMAIL_NOT_VERIFIED
import com.red_velvet.flix.data.remote.TMDBStatusCode.FAILED
import com.red_velvet.flix.data.remote.TMDBStatusCode.INSUFFICIENT_PERMISSIONS
import com.red_velvet.flix.data.remote.TMDBStatusCode.INTERNAL_ERROR
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_API_KEY
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_ID
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_INPUT
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_REQUEST_TOKEN
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_TOKEN
import com.red_velvet.flix.data.remote.TMDBStatusCode.INVALID_USERNAME_PASSWORD
import com.red_velvet.flix.data.remote.TMDBStatusCode.MAINTENANCE_MODE
import com.red_velvet.flix.data.remote.TMDBStatusCode.RESOURCE_PRIVATE
import com.red_velvet.flix.data.remote.TMDBStatusCode.SERVICE_OFFLINE
import com.red_velvet.flix.data.remote.TMDBStatusCode.SESSION_DENIED
import com.red_velvet.flix.data.remote.TMDBStatusCode.SUSPENDED_API_KEY
import com.red_velvet.flix.data.remote.TMDBStatusCode.USERNAME_PASSWORD_REQUIRED
import com.red_velvet.flix.data.remote.recoures.ApiResponse
import com.red_velvet.flix.domain.utils.FlixException
import okhttp3.ResponseBody
import javax.inject.Inject

class APIErrorHandlerImpl @Inject constructor(
    private val gson: Gson
) : APIErrorHandler {

    override fun getFlixException(errorBody: ResponseBody?): FlixException {
        return when (parseErrorBody(errorBody).statusCode) {
            in UNAUTHORIZED_STATUS_CODES -> FlixException.Unauthorized
            in SERVER_ERROR_STATUS_CODES -> FlixException.ServerError
            in INVALID_USERNAME_PASSWORD_STATUS_CODES -> FlixException.InvalidUsernameOrPassword
            EMAIL_NOT_VERIFIED.code -> FlixException.EmailNotVerified
            else -> FlixException.Unknown
        }
    }

    private fun parseErrorBody(errorBody: ResponseBody?): ApiResponse {
        return try {
            gson.fromJson(errorBody!!.string(), ApiResponse::class.java)
        } catch (e: Exception) {
            throw e
        }
    }

    private companion object {
        private val UNAUTHORIZED_STATUS_CODES = listOf(
            AUTHENTICATION_FAILED.code,
            AUTHENTICATION_FAILED_2.code,
            DEVICE_DENIED.code,
            SESSION_DENIED.code,
            ACCOUNT_DISABLED.code,
            INVALID_TOKEN.code,
            INSUFFICIENT_PERMISSIONS.code,
            RESOURCE_PRIVATE.code,
            INVALID_API_KEY.code,
            SUSPENDED_API_KEY.code,
            INVALID_REQUEST_TOKEN.code
        )

        private val SERVER_ERROR_STATUS_CODES = listOf(
            SERVICE_OFFLINE.code,
            INTERNAL_ERROR.code,
            FAILED.code,
            BACKEND_TIMEOUT.code,
            CONNECTION_ERROR.code,
            INVALID_ID.code,
            MAINTENANCE_MODE.code,
            INVALID_INPUT.code
        )

        private val INVALID_USERNAME_PASSWORD_STATUS_CODES = listOf(
            USERNAME_PASSWORD_REQUIRED.code,
            INVALID_USERNAME_PASSWORD.code
        )
    }
}