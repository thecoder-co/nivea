import 'package:flutter/material.dart';
import 'package:nivea/data.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';
import 'package:nivea/todays_tips_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
            AppColors.paleGold,
            AppColors.darkGold,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'HELLO ${UserData.name.toUpperCase()}, WELCOME TO',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkGold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Row(
                    children: const [
                      Text(
                        'MY LUMINOUS\nJOURNEY',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkGold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 65,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.paleGold,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Day 1',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.darkGold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'VIEW PROGRESS CHART',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.darkGold,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          HexagonBox(
                            child: Container(
                              color: AppColors.darkGold,
                              height: 120,
                              width: 120,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.paleGold,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.notifications),
                        Spacer(),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          'TODAY\'S ROUTINE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkGold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        HexagonBox(
                          child: Container(
                            color: AppColors.darkGold,
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/day 7.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doeiusmod tempor incididunt utlabore et dolore magna aliqua'''),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const TodaysTips(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      'GET STARTED',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.darkGold,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(),
                        const Text(
                          'TIPS FROM OUR\nEXPERTS',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkGold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Everything you need to know\non Dark Marks',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'KNOW MORE',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.darkGold,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(173, -57, 0),
                    child: Image.asset(
                      'assets/confident-black-woman-doctor-smiling-260nw-232877146-removebg-preview.png',
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                transform: Matrix4.translationValues(0, -30, 0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.paleGold,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 200,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                transform: Matrix4.translationValues(30, 0, 0),
                                child: const Text(
                                  'LEARN ABOUT\nLUMINOUS 630',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    color: AppColors.darkGold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  /*  Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (ctx) => const SignupPage(),
                                          ),
                                        ); */
                                },
                                child: Container(
                                  width: 180,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: AppColors.darkGold,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'BUY NOW',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 25),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(-50, -30, 0),
                      child: Image.asset(
                        'assets/NIVEA BOTTLE.png',
                        height: 230,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0, -45, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: AppColors.darkGold,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: AppColors.paleGold,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        'CHAT WITH LUMINOUS',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.message, size: 30)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
