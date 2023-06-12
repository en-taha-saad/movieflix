package com.red_velvet.flix.data.remote.recoures.movie


import com.google.gson.annotations.SerializedName
import com.red_velvet.flix.data.remote.recoures.KeywordResource

data class KeywordsResource(
    @SerializedName("id")
    val id: Int?,
    @SerializedName("keywords")
    val keywords: List<KeywordResource?>?
)