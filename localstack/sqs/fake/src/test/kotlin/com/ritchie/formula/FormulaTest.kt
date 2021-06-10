package com.ritchie.formula

import org.junit.After
import org.junit.Before
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.PrintStream
import kotlin.test.assertEquals

class FormulaTest {
    private val outContent: ByteArrayOutputStream = ByteArrayOutputStream()
    private val originalOut: PrintStream = System.out

    @Before
    fun setUpStreams() {
        System.setOut(PrintStream(outContent))
    }

    @After
    fun restoreStreams() {
        System.setOut(originalOut)
    }

    @Test
    fun runTrueInput() {
        Formula("en-US").Run()
        // use outContent.toString() to validate output
    }
}
