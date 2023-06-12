package com.red_velvet.flix.data.remote.recoures.account


import com.google.gson.annotations.SerializedName

data class AddToWatchListRequest(
    @SerializedName("media_id")
    val mediaId: Int?,
    @SerializedName("media_type")
    val mediaType: String?,
    @SerializedName("watchlist")
    val watchlist: Boolean?
)