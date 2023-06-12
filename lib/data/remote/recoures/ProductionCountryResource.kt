package com.red_velvet.flix.data.remote.recoures


import com.google.gson.annotations.SerializedName

data class ProductionCountryResource(
    @SerializedName("iso_3166_1")
    val iso31661: String?,
    @SerializedName("name")
    val name: String?
)