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
                const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageIcons),
                const SizedBox(width: 15),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  'Your program',
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst, //.withOpacity(0.8),
                    color.AppColor.gradientSecond, //.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 20,
                    color: color
                        .AppColor.gradientSecond, //.withOpacity(0.2),//??????????
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Next workout',
                      style: TextStyle(
                        fontSize: 15,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Legs Toning',
                      style: TextStyle(
                        fontSize: 23,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    Text(
                      'and Glutes Workout',
                      style: TextStyle(
                        fontSize: 23,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '60 мин',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 60,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
