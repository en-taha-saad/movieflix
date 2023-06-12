package com.red_velvet.flix.data.remote.recoures.auth


import com.google.gson.annotations.SerializedName

data class TokenResource(
    @SerializedName("expires_at")
    val expiresAt: String?,
    @SerializedName("request_token")
    val requestToken: String?,
    @SerializedName("success")
    val success: Boolean?
)