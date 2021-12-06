import 'package:flutter/material.dart';

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
