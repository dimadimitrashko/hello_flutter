import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер теория'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                    'https://previews.123rf.com/images/taeya18/taeya181605/taeya18160500005/58237886-l-image-style-graphique-de-calao-isolé-sur-fond-blanc.jpg'
            ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(33),
        ),
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Контейнер Теория'),
//     ),
//     body: Center(
//       child: Container(
//         decoration: BoxDecoration(
//         //  shape: BoxShape.circle,
//           color: Colors.amber[600],
//           border: Border.all(),
//         ),
//          alignment: Alignment.center,
//         // width: 300,
//         // height: 300,
//         margin: const EdgeInsets.fromLTRB(48, 100, 20, 0),
//         padding: const EdgeInsets.all(0.0),
//         child: Text('codeandart'),
//       ),
//     ),
//   );
// }
}
