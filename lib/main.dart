import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 5869;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[600],
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония, Старшая Некома'),
      ),
      body: Container(child: _buildMainColumn()),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: _buildRating(),
                    ),
                    Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: _buildAction(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: _buildDesc(),
                    ),
                  ],
                )),
          ),
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
          elevation: 5,
          child: Image.asset(
            'assets/images/depositphotos_we.webp',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRating() => ListTile(
        title: Text(
          'Куро Еуцуро',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text('Япония, Старшая некома'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoriteWidget(),
          ],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButon('Блокирующий', Icons.star, Colors.black),
          _buildButon('Рост 185 см', Icons.ten_k_outlined, Colors.black),
          _buildButon('Возраст 18', Icons.add_business_rounded, Colors.black),
        ],
      );

  Widget _buildButon(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );

  Widget _buildDesc() => Text(
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»'
        'Японская птичка под названием 水鶏 (kuina) переводится на русский как «водяной пастушок»',
        softWrap: true,
        style: TextStyle(
          fontSize: 8,
        ),
      );
}
