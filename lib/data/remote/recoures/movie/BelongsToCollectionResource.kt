package com.red_velvet.flix.data.remote.recoures.movie


import com.google.gson.annotations.SerializedName

data class BelongsToCollectionResource(
    @SerializedName("backdrop_path")
    val backdropPath: String?,
    @SerializedName("id")
    val id: Int?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("poster_path")
    val posterPath: String?
)