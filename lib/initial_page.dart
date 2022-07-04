import 'package:flutter/material.dart';
import 'package:nivea/first_page.dart';
import 'package:nivea/main.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

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
              Colors.white,

              // AppColors.lightGold,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/nivea logo.png',
                    height: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/luminous logo+++.png',
                height: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'MY LUMINOUS JOURNEY',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: AppColors.darkGold,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Image.asset('assets/ezgif.com-gif-maker.png'),
              ),
              // const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const FirstPage(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    color: AppColors.darkGold,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'START NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
