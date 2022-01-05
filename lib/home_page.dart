import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.colorDarkSecondary,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Training'
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.colorStartedShadow,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Icon(Icons.arrow_back_ios,)
                size: 20
                color:color.AppColor.color.AppColor.colorStarted,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
