import 'package:flutter/material.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';

class PlayTipPage extends StatelessWidget {
  const PlayTipPage({Key? key}) : super(key: key);

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
              AppColors.paleGold,
              AppColors.darkGold,
            ],
          ),
        ),
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
                  'DARK MARKS',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'EXPERT TIPS',
                  style: TextStyle(
                    color: AppColors.darkGold,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 163, 58, 93),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.paleGold,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    'HOW SPF50 PROTECTS',
                    style: TextStyle(
                      color: AppColors.darkGold,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Slider(
                  value: 5,
                  onChanged: (v) {},
                  max: 20,
                  activeColor: AppColors.darkGold,
                  thumbColor: AppColors.lightGold,
                  inactiveColor: AppColors.darkGold,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.skip_previous,
                      size: 50,
                    ),
                    const Icon(
                      Icons.restart_alt_rounded,
                      size: 50,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppColors.paleGold,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const PlayTipPage()),
                            );
                          },
                          icon: const Icon(
                            Icons.play_arrow,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite,
                      size: 50,
                    ),
                    const Icon(
                      Icons.skip_next,
                      size: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
