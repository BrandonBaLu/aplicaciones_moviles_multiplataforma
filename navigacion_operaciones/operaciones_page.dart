import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  OperacionesPage({Key key}) : super(key: key);

  @override
  _OperacionesPageState createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {
  final numeroController = TextEditingController();
  final numero2Controller = TextEditingController();
  dynamic _resultado = 0;
  int _numero1 = 0;
  int _numero2 = 0;
  final txtEntrada = TextEditingController();
  final txtResultado = TextEditingController();

  @override
  void dispose() {
    numeroController.dispose();
    numero2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Operaciones Basicas"),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text("Ingresa el primer valor")),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                controller: numeroController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Numero",
                ),
                onChanged: (text) {
                  print("$text");
                },
              ),
            ),

            //////
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text("Ingresa el segundo valor")),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                controller: numero2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Numero",
                ),
                onChanged: (text) {
                  print("$text");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Resultado: $_resultado",
                ),
            ),
            )
          ],
          /////////////////////
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                  backgroundColor: Colors.green,
                  heroTag: "btn",
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _numero1 = int.parse(numeroController.text);
                      _numero2 = int.parse(numero2Controller.text);
                      _resultado = _numero1 + _numero2;
                    });
                  }),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.orangeAccent,
                  heroTag: "btn2",
                  child: Icon(Icons.horizontal_rule),
                  onPressed: () {
                    setState(() {
                      _numero1 = int.parse(numeroController.text);
                      _numero2 = int.parse(numero2Controller.text);
                      _resultado = _numero1 - _numero2;
                    });
                  }),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.orangeAccent,
                  heroTag: "btn2",
                  child: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _numero1 = int.parse(numeroController.text);
                      _numero2 = int.parse(numero2Controller.text);
                      _resultado = _numero1 * _numero2;
                    });
                  }),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton(
                  backgroundColor: Colors.orangeAccent,
                  heroTag: "btn2",
                  child: Icon(Icons.format_strikethrough),
                  onPressed: () {
                    setState(() {
                      _numero1 = int.parse(numeroController.text);
                      _numero2 = int.parse(numero2Controller.text);
                      _resultado = (_numero1) / (_numero2);
                    });
                  })
            ],
          ),
        ));
  }
}