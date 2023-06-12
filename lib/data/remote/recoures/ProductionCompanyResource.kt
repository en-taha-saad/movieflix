package com.red_velvet.flix.data.remote.recoures


import com.google.gson.annotations.SerializedName

data class ProductionCompanyResource(
    @SerializedName("id")
    val id: Int?,
    @SerializedName("logo_path")
    val logoPath: String?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("origin_country")
    val originCountry: String?
)