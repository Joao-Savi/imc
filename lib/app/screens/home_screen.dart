import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {

  int _counter = 0;
  String _text = '';
  double _imc = 0;
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();

  void _calcular() {
    final double altura = double.parse(_alturaController.text)/100;
    final double peso = double.parse(_pesoController.text);

    _imc = peso / (altura * altura);

    setState(() {
        if(_imc < 18.6){
          _text = "Abaixo do Peso";
        } else if(_imc >= 18.6 && _imc < 24.9){
          _text = "Peso Ideal";
        } else if(_imc >= 24.9 && _imc < 29.9){
          _text = "Levemente Acima do Peso";
        } else if(_imc >= 29.9 && _imc < 34.9){
          _text = "Obesidade Grau ";
        } else if(_imc >= 34.9 && _imc < 39.9){
          _text = "Obesidade Grau II";
        } else if(_imc >= 40){
          _text = "Obesidade Grau III";
        }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              textAlign: TextAlign.center,
              controller: _pesoController,
              style: TextStyle(
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                labelText:"peso (kg)"
              ),
            ),

            TextFormField(
              textAlign: TextAlign.center,
              controller: _alturaController,
              style: TextStyle(
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                  labelText:"Altura (cm)"
              ),
            ),

            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),


              ),
              onPressed: ( ) {
                _calcular();
              },
              child: Text('$_text'),
            ),
          ],
        ),
      ),
    );
  }
}