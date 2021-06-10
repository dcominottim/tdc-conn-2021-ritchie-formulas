package com.ritchie.formula
import com.github.javafaker.Faker
import com.github.tomaslanger.chalk.Chalk
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import java.util.*


class Formula(private val localeText: String) {
    fun Run() {
        val faker = Faker(Locale(localeText))
        val sqsMessage =
            SqsMessage(
                name = faker.name().fullName(),
                age = faker.number().numberBetween(18, 90)
            )
        val gson = Gson()

        println(
            Chalk.on(gson.toJson(sqsMessage)).magenta()
        )
    }
}
