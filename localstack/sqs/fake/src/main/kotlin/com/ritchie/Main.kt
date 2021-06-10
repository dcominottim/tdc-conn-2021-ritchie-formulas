package com.ritchie

import com.ritchie.formula.Formula

object Main {
    @JvmStatic
    fun main(args: Array<String?>?) {
        val localeText: String = System.getenv("RIT_LOCALE_TEXT")
        val formula = Formula(localeText = localeText)
        formula.Run()
    }
}
