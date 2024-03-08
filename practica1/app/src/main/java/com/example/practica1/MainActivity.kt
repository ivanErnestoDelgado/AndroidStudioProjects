package com.example.practica1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    private lateinit var miboton: Button
    private lateinit var miTexto: TextView


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        miTexto=findViewById<TextView>(R.id.textOperaciones)

        miboton=findViewById<Button>(R.id.botonN1)
        miboton.setOnClickListener{
            mandarDato()

        }
    }

    private fun mandarDato(){
        miTexto.text="1"
    }
}