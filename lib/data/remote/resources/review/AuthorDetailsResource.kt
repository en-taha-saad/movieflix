package com.red_velvet.flix.data.remote.recoures.review


import com.google.gson.annotations.SerializedName

data class AuthorDetailsResource(
    @SerializedName("avatar_path")
    val avatarPath: String?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("rating")
    val rating: Int?,
    @SerializedName("username")
    val username: String?
)