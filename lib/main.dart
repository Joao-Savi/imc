import 'package:flutter/material.dart';
import 'package:imc/app/screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomeScreen(title: 'Flutter Demo Home Page'),
      home: const AboutScreen(title: 'sobre'),

    );
  }
}


