import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("Operaciones"),
          onPressed: () {
            Navigator.pushNamed(context, 'Operaciones');
          }),
    );
  }
}