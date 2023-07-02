package com.red_velvet.flix.domain.entity.account


data class PersonEntity(
    val id: Int,
    val name: String,
    val imageUrl: String,
    val biography: String,
    val birthday: String,
    val knownForDepartment: String,
    val placeOfBirth: String,
)