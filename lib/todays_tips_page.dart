import 'package:flutter/material.dart';
import 'package:nivea/day_completed_first.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';
import 'package:nivea/tips_modals.dart';

class TodaysTips extends StatefulWidget {
  const TodaysTips({Key? key}) : super(key: key);

  @override
  State<TodaysTips> createState() => _TodaysTipsState();
}

class _TodaysTipsState extends State<TodaysTips> {
  bool lotion = false;
  bool serum = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    'TODAY\'S TIPS',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.darkGold,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'YOUR DAY 7 ROUTINE',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 49, 35, 30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: AppColors.lightGold,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 15,
                        width: 15,
                        color: const Color(0xffcccc33),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/serum.png',
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    const Text('Have you applied the\nLuminous Serum Today?'),
                    const Spacer(),
                    Column(
                      children: [
                        Radio(
                          groupValue: serum,
                          onChanged: (bool? v) {
                            setState(() => serum = v!);
                          },
                          value: true,
                        ),
                        // const SizedBox(height: 5),
                        const Text('YES'),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Radio(
                          onChanged: (bool? v) {
                            setState(() => serum = v!);
                          },
                          groupValue: serum,
                          value: false,
                        ),
                        //const SizedBox(height: 5),
                        const Text('NO'),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.white),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 15,
                        width: 15,
                        color: const Color(0xffcccccc),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/moisturizer.png',
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                        'Have you applied your\nLuminous Moisturizer\nToday?'),
                    const Spacer(),
                    Column(
                      children: [
                        Radio(
                          groupValue: lotion,
                          onChanged: (bool? v) {
                            setState(() => lotion = v!);
                          },
                          value: true,
                        ),
                        // const SizedBox(height: 5),
                        const Text('YES'),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Radio(
                          onChanged: (bool? v) {
                            setState(() => lotion = v!);
                          },
                          groupValue: lotion,
                          value: false,
                        ),
                        //const SizedBox(height: 5),
                        const Text('NO'),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: AppColors.lightGold,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) => const DayCompFirst(),
                          ),
                        );
                      },
                      child: const Text(
                        'DONE WITH TODAY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        //onPrimary: Colors.white,
                        primary: AppColors.lightGold,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) => const DayCompFirst(),
                          ),
                        );
                      },
                      child: const Text(
                        'I\'LL GET TO IT LATER',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: AppColors.lightGold,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'TIP OF THE DAY',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.lightGold,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  TipsData.openTip(context, 6);
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.paleGold,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      HexagonBox(
                        child: Image.asset(
                          'assets/day 7.jpeg',
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Congratulations, You\'ve reached the week mark, by now your skin should be visibly brighter, smoother, softer, hydrated and should appear more radiant and you should be on the right track to a glowing complexion.',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'READ TODAY’S TIP',
                              style: TextStyle(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'ROUTINE HISTORY & TIPS',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.lightGold,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  //reverse: true,
                  separatorBuilder: (_, __) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            TipsData.openTip(context, 6 - index - 1);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/day ${6 - index}.jpeg',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 200,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'YOUR DAY ${6 - index} TIP',
                          style: const TextStyle(
                            color: AppColors.darkGold,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/LuminouSKV.jpeg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
