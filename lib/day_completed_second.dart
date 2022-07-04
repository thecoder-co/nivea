import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nivea/main.dart';

class DayCompSecond extends StatelessWidget {
  final String path;
  const DayCompSecond({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            AppColors.paleGold,
            AppColors.darkGold,
          ],
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              child: Image.file(
                File(path),
                height: 400,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/nivea logo.png',
                        height: 70,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'I just completed my 4 Weeks Luminous Journey on clearing my dark spots #4WeeksLuminous #LuminousChallenge @Nivea_ng',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/wp.png',
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/IM.png',
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/fk.png',
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
