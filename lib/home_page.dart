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
      backgroundColor: color.AppColor.colorLightCardColors,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Training',
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageIcons,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_back_ios,
                    size: 20,
                    color:color.AppColor.homePageIcons,),
                SizedBox(width: 10),
                const Icon(Icons.calendar_today_outlined,
                    size: 20,
                    color: color.AppColor.homePageIcons),
                SizedBox(width: 15),
                const Icon(Icons.arrow_forward_ios,
                  size: 20,
                  color:color.AppColor.homePageIcons,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
