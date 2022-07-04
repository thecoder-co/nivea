import 'package:flutter/material.dart';
import 'package:nivea/main.dart';
import 'package:nivea/play_tip_page.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: Edge,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'EXPERT TIPS',
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
                    'TODAY\'S EXPERT TIP',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.lightGold,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 163, 58, 93),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
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
                                      builder: (context) =>
                                          const PlayTipPage()),
                                );
                              },
                              icon: const Icon(Icons.play_arrow),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Text(
                        'PREVIOUS TIPS',
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
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 130,
                          width: 180,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit\namet, consectetur.',
                          style: TextStyle(
                            color: AppColors.darkGold,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text(
                    'PREVIOUS TIPS',
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
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 180, 173, 151),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 130,
                          width: 180,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit\namet, consectetur.',
                          style: TextStyle(
                            color: AppColors.darkGold,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
