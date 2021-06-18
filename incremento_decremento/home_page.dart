import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icremento y Decremento'),
      ),
      body: Center(
        child: Text(
          '$_contador',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          textScaleFactor: 2.5,
          maxLines: 3,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.add
            ),
            onPressed: () {
              setState(() {
                _contador++;
                print('Contador: $_contador');          
              });
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(           
            child: Icon(
              Icons.horizontal_rule
            ),
            onPressed: () => setState(() {
                _contador--;
                print('Contador: $_contador');          
              }),
            heroTag: null,
          )
        ]
      )
  );
  }
}

