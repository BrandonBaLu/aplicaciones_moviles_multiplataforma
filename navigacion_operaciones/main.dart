import 'package:flutter/material.dart';
import 'package:operaciones_basicas/pages/menu_page.dart';
import 'package:operaciones_basicas/pages/operaciones_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'menu',
      routes: <String, WidgetBuilder>{
        'menu': (BuildContext context) => MenuPage(),
        'Operaciones': (BuildContext context) => OperacionesPage()
      },
    );
  }
}