package com.red_velvet.flix.data.remote.recoures.list


import com.google.gson.annotations.SerializedName

data class CreateListRequest(
    @SerializedName("name")
    val name: String?,
    @SerializedName("description")
    val description: String?,
    @SerializedName("language")
    val language: String?
)