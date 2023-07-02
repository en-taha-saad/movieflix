package com.red_velvet.flix.domain.entity.account

data class TokenEntity(
    val expiresAt: String,
    val requestToken: String,
)
