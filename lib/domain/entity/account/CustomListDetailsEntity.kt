package com.red_velvet.flix.domain.entity.account

import com.red_velvet.flix.domain.entity.movie.MovieEntity

data class CustomListDetailsEntity(
    val createdBy: String,
    val description: String,
    val id: String,
    val items: List<MovieEntity>,
    val name: String,
    val itemCount: Int,
)
