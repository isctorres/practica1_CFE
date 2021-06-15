import 'package:flutter/material.dart';
import 'package:hola_mundo_cfe/settings/color_settings.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
              )
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



// En flutter todo es un Widget (Lego)
