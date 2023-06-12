package com.red_velvet.flix.data.remote.recoures.auth


import com.google.gson.annotations.SerializedName

data class LoginRequest(
    @SerializedName("username")
    val username: String?,
    @SerializedName("password")
    val password: String?,
    @SerializedName("request_token")
    val requestToken: String?

)