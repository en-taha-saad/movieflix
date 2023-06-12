package com.red_velvet.flix.data.remote.recoures.series


import com.google.gson.annotations.SerializedName

data class NetworkResource(
    @SerializedName("id")
    val id: Int?,
    @SerializedName("logo_path")
    val logoPath: String?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("origin_country")
    val originCountry: String?
)