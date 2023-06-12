package com.red_velvet.flix.data.remote.recoures.trailer


import com.google.gson.annotations.SerializedName

data class TrailersResource(
    @SerializedName("id")
    val id: Int?,
    @SerializedName("results")
    val results: List<TrailerDetailsResource?>?
)