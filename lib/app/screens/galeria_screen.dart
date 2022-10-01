import 'package:flutter/material.dart';
import 'package:imc/app/Components/menu.dart';
import 'package:imc/app/screens/home_screen.dart';

class GaleriaScreen extends StatefulWidget {
  const GaleriaScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GaleriaScreen> createState() => _MyGaleriaScreen();
}

class _MyGaleriaScreen extends State<GaleriaScreen> {

  String _text = '';
  List _listNames = [];
  final _inputController = TextEditingController();

  void _cleanList(){
    setState(() {
      _listNames.clear();
    });
  }

  void _setString() {
    setState(() {
      _text = _inputController.text;
      _listNames.add(_text);
      _inputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey,
      ),

      drawer:
      Menu(context),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://mega.ibxk.com.br/2018/02/23/animal-empalhado-23180402456443.jpg?ims=610x'),
            Image.asset("assets/imagens/pior_taxidermia_39.jpg"),



          ],
        ),
      ),
    );
  }
}