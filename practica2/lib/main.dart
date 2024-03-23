import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora practica flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _texto="";
  void _mandarDato(String cadena) {
    setState(() {
      if(_texto.contains("Expresion"))_texto="";
      _texto+=cadena;
    });
  }
  void _borrarDato() {
    setState(() {
      if(_texto.contains("Expresion"))_texto="";
      if(_texto.isNotEmpty) _texto=_texto.substring(0,_texto.length-1);
    });
  }

  void _calcular() {
    setState(() {
    try{
      _texto=_texto.interpret().toString();
    }
        catch(e){
        _texto="Expresion invalida";
        };
    });
  }

Widget _ConstruirBotonMandarDato(String texto){
return Container(
    child: SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(


        onPressed: (){
          _mandarDato(texto);
          
        },
        child: Text(
            texto,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
    )
);

}

  Widget _ConstruirBotonBorrar(String texto){
    return Container(

        child: SizedBox(
          width: 125,
          height: 75,
          child: ElevatedButton(
            onPressed: (){
            _borrarDato();
            },
            child: Text(
              texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
        )
    );

  }

  Widget _ConstruirBotonCalcular(String texto){
    return Container(

        child: SizedBox(
          width: 125,
          height: 75,
          child: ElevatedButton(
            onPressed: (){
              _calcular();
            },
            child: Text(
              texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
        )
    );

  }
  @override
  Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Text(
                  style: TextStyle(
                    fontSize: 30
                  ),
                  _texto
                ),
            ),
            Expanded(
                flex: 8,


              child:Container(
                color: Colors.cyan,

              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBotonMandarDato("7"),
                      _ConstruirBotonMandarDato("8"),
                      _ConstruirBotonMandarDato("9"),
                      _ConstruirBotonMandarDato("/"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBotonMandarDato("4"),
                      _ConstruirBotonMandarDato("5"),
                      _ConstruirBotonMandarDato("6"),
                      _ConstruirBotonMandarDato("*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBotonMandarDato("1"),
                      _ConstruirBotonMandarDato("2"),
                      _ConstruirBotonMandarDato("3"),
                      _ConstruirBotonMandarDato("-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBotonMandarDato("."),
                      _ConstruirBotonMandarDato("0"),
                      _ConstruirBotonMandarDato("C"),
                      _ConstruirBotonMandarDato("+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBotonBorrar("<="),
                      _ConstruirBotonCalcular("=="),
                    ],
                  ),
                ],


              )
              )
            )

          ],
        ),
      ),

    );
  }
}
