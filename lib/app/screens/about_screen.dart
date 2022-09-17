import 'package:flutter/material.dart';
import 'package:imc/app/Components/menu.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AboutScreen> createState() => _MyAboutScreenState();
}

class _MyAboutScreenState extends State<AboutScreen> {
  int calcula = 0;
  String _text = '';
  List _listNames = [];
  final _inputController = TextEditingController();

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
            Text("sobre")


          ],
        ),
      ),
    );
  }
}