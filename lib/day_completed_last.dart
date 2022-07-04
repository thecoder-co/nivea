import 'package:flutter/material.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';

class DayCompLast extends StatelessWidget {
  const DayCompLast({Key? key}) : super(key: key);

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
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/Hexagon Patter.png'),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        HexagonBox(
                          child: Container(
                            color: AppColors.darkGold,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.menu,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'HELLO, ESTHER',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'CONGRATULATIONS',
                      style: TextStyle(
                        color: AppColors.darkGold,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/Gift box.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.paleGold,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        '''YOU HAVE COMPLETED
WEEK 4 CHALLENGE

HERE’S A GIFT BOX FOR YOU
#LuminousChallenge''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.darkGold,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.paleGold,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/jg.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/l.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/j.png',
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
