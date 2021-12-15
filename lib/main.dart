import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main(){
  debugPaintPointersEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}
