import 'package:flutter/material.dart';
import 'package:hola_mundo_cfe/screens/estados_screen.dart';
import 'package:hola_mundo_cfe/screens/propinas_screen.dart';
import 'package:hola_mundo_cfe/settings/color_settings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ing. Rubén Torres Frias"), 
                accountEmail: Text("ruben.torres@itcelaya.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/cfe.jpg"),
                  //backgroundImage: NetworkImage("https://www.sise-servicios.com/wp-content/uploads/2017/06/CFE-01.png"),
                ),
              ),
              ListTile(
                title: Text('Propinas'),
                subtitle: Text('Calculadora de propinas'),
                leading: Icon(Icons.monetization_on_outlined),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PropinasScreen()));
                },
              ),
              ListTile(
                title: Text('Convertir °C <-> °F'),
                subtitle: Text('Convertidor de temperatura'),
                leading: Icon(Icons.thermostat),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                title: Text('API Movies'),
                subtitle: Text('Consumo de API´s'),
                leading: Icon(Icons.movie),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                title: Text('Manejo de Estado'),
                subtitle: Text('Stateless vs Stateful'),
                leading: Icon(Icons.compare),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetSinEstado()));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetConEstado()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: ColorSettings.colorSecondary,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          backgroundColor: ColorSettings.colorPrimary,
          title: Text("Hola Mundo CFE"),
        ),
        body: 
        Center(
          child: Text('Bienvenidos CFE',style: TextStyle(
            color: Color.fromARGB(200, 255, 0, 0), 
            fontSize: 20, 
            fontWeight: FontWeight.bold ),),
          //Colors.blue[400]
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: (){
            // codigo
          },
        ),
      ),
    );
  }
}