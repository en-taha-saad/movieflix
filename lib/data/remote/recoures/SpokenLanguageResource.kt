package com.red_velvet.flix.data.remote.recoures


import com.google.gson.annotations.SerializedName

data class SpokenLanguageResource(
    @SerializedName("english_name")
    val englishName: String?,
    @SerializedName("iso_639_1")
    val iso6391: String?,
    @SerializedName("name")
    val name: String?
)