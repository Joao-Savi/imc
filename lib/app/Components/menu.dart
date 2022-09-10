import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/app/screens/about_screen.dart';
import 'package:imc/app/screens/galeria_screen.dart';
import 'package:imc/app/screens/home_screen.dart';

Widget Menu(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Text('Menu'),
        ),
        ListTile(
          title: const Text('Calculadora de IMC'),
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
      ],
    ),
  );
}
