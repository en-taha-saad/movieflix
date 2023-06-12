package com.red_velvet.flix.data.remote.recoures.series


import com.google.gson.annotations.SerializedName

data class SeriesEpisodeDetailsResource(
    @SerializedName("air_date")
    val airDate: String?,
    @SerializedName("crew")
    val crew: List<CrewResource?>?,
    @SerializedName("episode_number")
    val episodeNumber: Int?,
    @SerializedName("id")
    val id: Int?,
    @SerializedName("name")
    val name: String?,
    @SerializedName("overview")
    val overview: String?,
    @SerializedName("production_code")
    val productionCode: String?,
    @SerializedName("runtime")
    val runtime: Int?,
    @SerializedName("season_number")
    val seasonNumber: Int?,
    @SerializedName("still_path")
    val stillPath: String?,
    @SerializedName("vote_average")
    val voteAverage: Int?,
    @SerializedName("vote_count")
    val voteCount: Int?
)