package com.red_velvet.flix.data.remote

import com.red_velvet.flix.domain.utils.FlixException
import okhttp3.ResponseBody

interface APIErrorHandler {
    fun getFlixException(errorBody: ResponseBody?): FlixException
}