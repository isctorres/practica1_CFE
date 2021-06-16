import 'package:flutter/material.dart';

class WidgetSinEstado extends StatelessWidget {
  const WidgetSinEstado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var contador = 0;

    return Scaffold(
      appBar: AppBar( title: Text("Sin Estado vs Con Estado"),),
      body: Center(
        child: Text("Valor del Contador : $contador"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: (){
          contador++;
          print(contador);
        },
      ),
    );
  }
}


class WidgetConEstado extends StatefulWidget {
  WidgetConEstado({Key? key}) : super(key: key);

  @override
  _WidgetConEstadoState createState() => _WidgetConEstadoState();
}

class _WidgetConEstadoState extends State<WidgetConEstado> {

  var contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sin Estado vs Con Estado"),),
      body: Center(
        child: Text("El valor del contador es : $contador")
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: (){
          contador++;
          print(contador);
          setState(() {
            
          });
        },
      ),
    );
  }
}