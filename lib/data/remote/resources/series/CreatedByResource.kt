package com.red_velvet.flix.data.remote.recoures.series


import com.google.gson.annotations.SerializedName

data class CreatedByResource(
    @SerializedName("credit_id")
    val creditId: String?,
    @SerializedName("gender")
    val gender: Int?,
    @SerializedName("id")
    val id: Int?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("profile_path")
    val profilePath: String?
)