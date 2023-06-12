package com.red_velvet.flix.data.remote.recoures.auth


import com.google.gson.annotations.SerializedName

data class GuestSessionResource(
    @SerializedName("expires_at")
    val expiresAt: String?,
    @SerializedName("guest_session_id")
    val guestSessionId: String?,
    @SerializedName("success")
    val success: Boolean?
)