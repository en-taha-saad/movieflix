package com.red_velvet.flix.data.remote.recoures.series


import com.google.gson.annotations.SerializedName

data class SessionDetailsResource(
    @SerializedName("air_date")
    val airDate: String?,
    @SerializedName("episodes")
    val episodes: List<EpisodeResource?>?,
    @SerializedName("_id")
    val id: String?,
    @SerializedName("id")
    val seasonId: Int?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("overview")
    val overview: String?,
    @SerializedName("poster_path")
    val posterPath: String?,
    @SerializedName("season_number")
    val seasonNumber: Int?
)