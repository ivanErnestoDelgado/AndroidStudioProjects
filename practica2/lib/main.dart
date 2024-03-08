import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  void _incrementCounter() {
    setState(() {
    });
  }
Widget _ConstruirBoton(String texto){
return Container(

    child: SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(


        onPressed: (){},
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
                  "Salida..."
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
                      _ConstruirBoton("7"),
                      _ConstruirBoton("8"),
                      _ConstruirBoton("9"),
                      _ConstruirBoton("/"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBoton("4"),
                      _ConstruirBoton("5"),
                      _ConstruirBoton("6"),
                      _ConstruirBoton("*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBoton("1"),
                      _ConstruirBoton("2"),
                      _ConstruirBoton("3"),
                      _ConstruirBoton("-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBoton("."),
                      _ConstruirBoton("0"),
                      _ConstruirBoton("C"),
                      _ConstruirBoton("+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ConstruirBoton("-"),
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
