import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/app/screens/about_screen.dart';
import 'package:imc/app/screens/galeria_screen.dart';
import 'package:imc/app/screens/home_screen.dart';

import '../screens/calculator_list_screen.dart';

Widget Menu(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
            decoration:BoxDecoration(
              color: Colors.blueGrey,
            ) ,
            accountName: Text("João Savi"),
            accountEmail: Text("joao_g_savi@estudante.sesisenai.org.br"),
        ),

        ListTile(
          title: const Text('Calculadora de IMC'),
          leading: Icon(Icons.accessibility_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen(title: "Calculadora de IMC")),
            );
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: const Text('Sobre'),
          leading: Icon(Icons.add),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutScreen(title: "Sobre")),
            );
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: const Text('galeria'),
          leading: Icon(Icons.add_a_photo),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GaleriaScreen(title: "galeria")),
            );
            // Update the state of the app.
            // ...

          },
        ),
        ListTile(
          title: const Text('Calculadora '),
          leading: Icon(Icons.ad_units),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CalculatorListScreen(title: "Calculadora")),

            );
            // Update the state of the app.
            // ...

          },
        ),
      ],
    ),
  );
}
