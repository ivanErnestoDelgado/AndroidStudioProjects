package com.example.practica1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import org.mariuszgromada.math.*;
import org.mariuszgromada.math.mxparser.Expression

class MainActivity : AppCompatActivity() {
    private lateinit var botonNum1: Button
    private lateinit var botonNum2: Button
    private lateinit var botonNum3: Button
    private lateinit var botonNum4: Button
    private lateinit var botonNum5: Button
    private lateinit var botonNum6: Button
    private lateinit var botonNum7: Button
    private lateinit var botonNum8: Button
    private lateinit var botonNum9: Button
    private lateinit var botonNum0: Button
    private lateinit var botonSumar: Button
    private lateinit var botonResta: Button
    private lateinit var botonMultiplicacion: Button
    private lateinit var botonDivision: Button
    private lateinit var botonPunto: Button
    private lateinit var botonBorrar: Button
    private lateinit var botonIgual: Button

    private lateinit var miTexto: TextView
    private  var cadena: String=""


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        miTexto=findViewById<TextView>(R.id.textOperaciones)

        botonNum1=findViewById<Button>(R.id.botonN1)
        botonNum1.setOnClickListener{
            mandarDato(botonNum1)

        }

        botonNum2=findViewById<Button>(R.id.botonN2)
        botonNum2.setOnClickListener{
            mandarDato(botonNum2)

        }
        botonNum3=findViewById<Button>(R.id.botonN3)
        botonNum3.setOnClickListener{
            mandarDato(botonNum3)

        }
        botonNum4=findViewById<Button>(R.id.botonN4)
        botonNum4.setOnClickListener{
            mandarDato(botonNum4)

        }
        botonNum5=findViewById<Button>(R.id.botonN5)
        botonNum5.setOnClickListener{
            mandarDato(botonNum5)

        }
        botonNum6=findViewById<Button>(R.id.botonN6)
        botonNum6.setOnClickListener{
            mandarDato(botonNum6)

        }
        botonNum7=findViewById<Button>(R.id.botonN7)
        botonNum7.setOnClickListener{
            mandarDato(botonNum7)

        }
        botonNum8=findViewById<Button>(R.id.botonN8)
        botonNum8.setOnClickListener{
            mandarDato(botonNum8)

        }

        botonNum9=findViewById<Button>(R.id.botonN9)
        botonNum9.setOnClickListener{
            mandarDato(botonNum9)

        }
        botonNum0=findViewById<Button>(R.id.botonN0)
        botonNum0.setOnClickListener{
            mandarDato(botonNum0)
        }
        botonDivision=findViewById<Button>(R.id.botonDividir)
        botonDivision.setOnClickListener{
            mandarDato(botonDivision)
        }
        botonSumar=findViewById<Button>(R.id.botonSuma)
        botonSumar.setOnClickListener{
            mandarDato(botonSumar)
        }
        botonResta=findViewById<Button>(R.id.botonMenos)
        botonResta.setOnClickListener{
            mandarDato(botonResta)
        }
        botonMultiplicacion=findViewById<Button>(R.id.botonMultiplicar)
        botonMultiplicacion.setOnClickListener{
            mandarDato(botonMultiplicacion)
        }
        botonPunto=findViewById<Button>(R.id.botonPunto)
        botonPunto.setOnClickListener{
            mandarDato(botonPunto)
        }
        botonBorrar=findViewById<Button>(R.id.botonBorrar)
        botonBorrar.setOnClickListener{
            borrarDato()
        }
        botonIgual=findViewById<Button>(R.id.botonIgual)
        botonIgual.setOnClickListener{
            calcular()
        }
    }


    private fun mandarDato(boton:Button){
        cadena+=boton.text
        miTexto.text=cadena
    }
    private fun borrarDato(){
        if(cadena.length>0) cadena=cadena.substring(0,(cadena.length-1))
        miTexto.text=cadena
    }
    private fun calcular() {

            val expresion:Expression=Expression(cadena)
            cadena=expresion.calculate().toString();
            miTexto.text=cadena

            if (cadena.contains("Na")) cadena=""

    }
}