import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nivea/day_completed_last.dart';
import 'package:nivea/day_completed_second.dart';
import 'package:nivea/main.dart';

class DayCompFirst extends StatefulWidget {
  const DayCompFirst({Key? key}) : super(key: key);

  @override
  State<DayCompFirst> createState() => _DayCompFirstState();
}

class _DayCompFirstState extends State<DayCompFirst> {
  final ImagePicker _picker = ImagePicker();

  // Pick an image
  late final XFile? image;

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
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () async {
                  image = await _picker.pickImage(source: ImageSource.gallery);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DayCompSecond(path: image!.path),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    //  color: AppColors.darkGold,
                    border: Border.all(
                      color: AppColors.darkGold,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'UPLOAD YOUR IMAGE',
                        style: TextStyle(
                          color: AppColors.darkGold,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.darkGold,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DayCompLast(),
                    ),
                  );
                },
                child: const Text(
                  'If you are not interested in uploading and sharing image of your Luminous Journey, click HERE to skip to your 7th Day milestone gift',
                  style: TextStyle(
                    color: AppColors.darkGold,
                    fontSize: 15,
                  ),
                ),
              ),
              const Spacer(flex: 2),
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
      ),
    ));
  }
}
