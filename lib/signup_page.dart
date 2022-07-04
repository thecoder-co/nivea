import 'package:flutter/material.dart';
import 'package:nivea/data.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/home.dart';
import 'package:nivea/main.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paleGold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkGold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                HexagonBox(
                  child: Container(
                    height: 180,
                    width: 180,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.darkGold,
                    ),
                  ),
                ),
                TextField(
                  style: const TextStyle(color: AppColors.darkGold),
                  decoration: const InputDecoration(hintText: 'Name'),
                  onChanged: (v) {
                    UserData.name = v;
                  },
                ),
                const SizedBox(height: 20),
                const TextField(
                  style: TextStyle(color: AppColors.darkGold),
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 20),
                const TextField(
                  style: TextStyle(color: AppColors.darkGold),
                  decoration: InputDecoration(hintText: 'Country'),
                ),
                const SizedBox(height: 20),
                const TextField(
                  style: TextStyle(color: AppColors.darkGold),
                  decoration: InputDecoration(hintText: 'Number'),
                ),
                const SizedBox(height: 20),
                const TextField(
                  style: TextStyle(color: AppColors.darkGold),
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'By clicking “Register”, you agree to our\nTerms and Conditions and Privacy Statement',
                  style: TextStyle(
                    color: AppColors.darkGold,
                    //  fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => Home(),
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
                ),
                const SizedBox(height: 20),
                const Text(
                  'Already have an account? Login Here',
                  style: TextStyle(
                    color: AppColors.darkGold,
                    //  fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
