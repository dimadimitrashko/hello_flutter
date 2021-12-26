import 'package:flutter/material.dart';

void main() => runApp(const Lesson());

class Lesson extends StatelessWidget {
  const Lesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('project')),
        ),
        body: const Center(child: Text('lah')),
      ),
    );
  }
}
