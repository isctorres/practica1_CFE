import 'dart:ffi';

import 'package:flutter/material.dart';

class PropinasScreen extends StatefulWidget {
  PropinasScreen({Key? key}) : super(key: key);

  @override
  _PropinasScreenState createState() => _PropinasScreenState();
}

class _PropinasScreenState extends State<PropinasScreen> {

  double montoConsumo = 0.0;
  double porcentaje   = 0.0;
  double total        = 0.0;

  TextEditingController conTxtConsumo = TextEditingController();
  TextEditingController conTxtPropina = TextEditingController();

  @override
  Widget build(BuildContext context) {

    TextField txtConsumo = TextField(
      controller: conTxtConsumo,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Introduce el monto"
      ),
    );

    TextField txtPorcentaje = TextField(
      controller: conTxtPropina,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Porcentaje de propina"
      ),
    );

    Text lblTotal = Text(
      "Monto a pagar $total"
    );

    MaterialButton btnCalcular = MaterialButton(
      child: Text("Calcular propina"),
      onPressed: (){
        montoConsumo = double.parse(conTxtConsumo.text);
        porcentaje   = double.parse(conTxtPropina.text);

        double montoPropina = montoConsumo * ( porcentaje / 100 );
        total = montoConsumo + montoPropina;
        setState(() {});
      }
    );

    return Scaffold(
      appBar: AppBar(title: Text("Calculadora de Propinas"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            txtConsumo,
            txtPorcentaje,
            lblTotal,
            btnCalcular
          ],
        ),
      ),
    );
  }
}