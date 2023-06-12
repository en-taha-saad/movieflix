package com.red_velvet.flix.data.remote.recoures


import com.google.gson.annotations.SerializedName

data class KeywordResource(
    @SerializedName("id")
    val id: Int?,
    @SerializedName("name")
    val name: String?
)