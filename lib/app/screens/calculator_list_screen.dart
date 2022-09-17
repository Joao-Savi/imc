
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorListScreen extends StatefulWidget {
  const CalculatorListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CalculatorListScreen> createState() => _MyCalculatorListScreen();
}

class _MyCalculatorListScreen extends State<CalculatorListScreen> {

  double _valorFinal = 0;
  List<dynamic> _listResult = [];

  TextEditingController _firstInputController = TextEditingController();
  TextEditingController _secondInputController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();

  void _Somar() {

    setState(() {
      final double primeiroNumero = double.parse(_secondInputController.text);
      final double SegundoNumero = double.parse(_firstInputController.text);

      _valorFinal = primeiroNumero + SegundoNumero;

      _listResult.add(_valorFinal.toStringAsFixed(2));

    });
  }

  void _Dividir() {
    setState(() {
      final double primeiroNumero = double.parse(_secondInputController.text);
      final double SegundoNumero = double.parse(_firstInputController.text);

      _valorFinal = primeiroNumero / SegundoNumero;

      _listResult.add(_valorFinal.toStringAsFixed(2));

    });
  }
  void _Subtrir() {
    setState(() {
      final double primeiroNumero = double.parse(_secondInputController.text);
      final double SegundoNumero = double.parse(_firstInputController.text);

      _valorFinal = primeiroNumero - SegundoNumero;

      _listResult.add(_valorFinal.toStringAsFixed(2));

    });
  }
  void _Multiplicar() {
    setState(() {
      final double primeiroNumero = double.parse(_secondInputController.text);
      final double SegundoNumero = double.parse(_firstInputController.text);

      _valorFinal = primeiroNumero * SegundoNumero;

      _listResult.add(_valorFinal.toStringAsFixed(2));

    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //drawer: Menu(context),
      body: Column(
        children: <Widget>[
          TextField(
            textAlign: TextAlign.center,
            controller: _firstInputController,
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          TextField(
            textAlign: TextAlign.center,
            controller: _secondInputController,
            style: TextStyle(
              fontSize: 16,

            ),

          ),

          Row(
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),

                ),
                onPressed: ( ) {
                  _Multiplicar();
                },
                child: Text('*'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),


                ),
                onPressed: ( ) {
                  _Dividir();
                },
                child: Text('/'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),


                ),
                onPressed: ( ) {
                  _Subtrir();
                },
                child: Text('-'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),


                ),
                onPressed: ( ) {
                  _Somar();
                },
                child: Text('+'),
              ),

            ],
          ),
          Text('$_valorFinal',
          style: Theme.of(context).textTheme.headline4),

          Expanded(
              child: ListView.builder(
                itemCount: _listResult.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(_listResult[index].toString()),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      tooltip: 'increase volume by 10',
                      onPressed: (){
                        setState(() {
                          _listResult.remove(_listResult[index]);
                        });
                      },
                    ),
                  );
                }
              ),
          ),

        ],
      ),
    );
  }
}