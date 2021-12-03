import 'package:flutter/material.dart';
import 'package:hello_flutter/my_container.dart';
import 'package:hello_flutter/my_flexible.dart';
import 'package:hello_flutter/row_column.dart';
import 'package:flutter/rendering.dart' show debugPaintPointersEnabled;

void main() {
  debugPaintPointersEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyFlex(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tестирование')),
      body: Container(
        child: Center(
          child: Text('Здесь что-то будет'),
        ),
      ),
    );
  }
}
