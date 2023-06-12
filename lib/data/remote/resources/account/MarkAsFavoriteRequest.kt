package com.red_velvet.flix.data.remote.recoures.account


import com.google.gson.annotations.SerializedName

data class MarkAsFavoriteRequest(
    @SerializedName("media_id")
    val mediaId: Int?,
    @SerializedName("media_type")
    val mediaType: String?,
    @SerializedName("favorite")
    val favorite: Boolean?
)