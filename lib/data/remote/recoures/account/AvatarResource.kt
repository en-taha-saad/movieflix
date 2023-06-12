package com.red_velvet.flix.data.remote.recoures.account


import com.google.gson.annotations.SerializedName

data class AvatarResource(
    @SerializedName("gravatar")
    val gravatar: GravatarResource?,
    @SerializedName("tmdb")
    val avatarPath: AvatarPathDto?
)