package com.red_velvet.flix.domain.entity.account

data class LoginBodyEntity(
    val username: String,
    val password: String,
    val requestToken: String
)
