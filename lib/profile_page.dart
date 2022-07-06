import 'package:flutter/material.dart';
import 'package:nivea/data.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: AppColors.paleGold,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  HexagonBox(
                    child: Container(
                      height: 85,
                      width: 85,
                      color: AppColors.lightGold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'HELLO ${UserData.name}',
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: AppColors.brown,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          color: AppColors.lightGold,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'YOUR LUMINOUS\nJOURNEY',
                        style: TextStyle(
                          color: AppColors.darkGold,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.lightGold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_ios_new_rounded),
                      Text(
                        'MONTH 1',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.darkGold,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/calendar.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'YOUR LUMINOUS\nJOURNEY PHOTO WALL',
              style: TextStyle(
                color: AppColors.darkGold,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/picture wall.png'),
            ),
          ],
        ),
      ),
    );
  }
}
