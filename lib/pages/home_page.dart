import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              )),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: const <Widget>[
              ListTile(
                title: Text('Освежающие напитки',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                subtitle: Text(
                  'Больше чем 100 видов наппитков',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.panorama_horizontal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
