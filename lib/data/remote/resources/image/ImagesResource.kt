package com.red_velvet.flix.data.remote.recoures.image


import com.google.gson.annotations.SerializedName

data class ImagesResource(
    @SerializedName("backdrops")
    val backdrops: List<ImageResource?>?,
    @SerializedName("id")
    val id: Int?,
    @SerializedName("logos")
    val logos: List<Any?>?,
    @SerializedName("posters")
    val posters: List<ImageResource?>?,
    @SerializedName("stills")
    val stills: List<ImageResource?>?
)