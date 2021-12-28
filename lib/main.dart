import 'package:flutter/material.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);
  debugShowChecedModeBaner: false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StatefullWidget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}
