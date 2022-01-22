import 'dart:convert';

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageContainerTextSmall,
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Тренеровка',
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
                  'Твоя программа',
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  'Детали',
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
                    color: color.AppColor
                        .gradientSecond, //.withOpacity(0.2),//??????????
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 18, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Следущая тренеровка',
                      style: TextStyle(
                        fontSize: 15,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Тренеровка ног',
                      style: TextStyle(
                        fontSize: 23,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    Text(
                      'и брюшного преса',
                      style: TextStyle(
                        fontSize: 23,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 25),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //     Row(
                    //       children: const [
                    //         Icon(
                    //           Icons.timer,
                    //           size: 20,
                    //           color: color.AppColor.homePageContainerTextSmall,
                    //         ),
                    //         SizedBox(width: 10),
                    //         Text(
                    //           '60 мин',
                    //           style: TextStyle(
                    //             fontSize: 13,
                    //             color:
                    //             color.AppColor.homePageContainerTextSmall,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Expanded(child: Container()),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(60),
                    //         boxShadow: const [
                    //           BoxShadow(
                    //             color: color.AppColor.gradientFirst,
                    //             blurRadius: 10,
                    //             offset: Offset(4,8),
                    //           ),
                    //         ],
                    //       ),
                    //       child: const Icon(
                    //         Icons.play_circle_fill,
                    //         color: Colors.white,
                    //         size: 60,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 20),
                    height: 120,
                    decoration: BoxDecoration(
                        // color: color.AppColor.gradientSecond.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/card.jpg"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            offset: const Offset(8, 10),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.3),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(-1, -5),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.3),
                          ),
                        ]),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 200, bottom: 40),
                    decoration: BoxDecoration(
                        // color: Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/figure.png"))),
                  ), //beauty girl
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    // color: Colors.redAccent.withOpacity(0.3),
                    margin: const EdgeInsets.only(left: 130, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Вы отлично идете',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePageDetail),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: const TextSpan(
                                text: "Так держать\n",
                                style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16,
                                ),
                                children: [
                              TextSpan(
                                text: "придерживайся своего плана",
                              ),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Text(
                  "Список упражнений",
                  style: TextStyle(
                    // textAlign: TextAlign.center,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageTitle,
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, i) {
                      return Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage("assets/figure.png"),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(5, 5),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.3),
                                  ),
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(-5, -5),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.3),
                                  ),
                                ]),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Талия",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
