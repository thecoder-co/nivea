import 'package:flutter/material.dart';
import 'package:nivea/day_completed_first.dart';
import 'package:nivea/hexagon_clipper.dart';
import 'package:nivea/main.dart';

class Tip {
  final String thumb;
  final String? url;
  Tip({
    required this.thumb,
    this.url,
  });
}

class TipsData {
  static openTip(
    BuildContext context,
    int index,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) => TipsModal(index: index),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static List<Tip> previousTips = [
    Tip(
      thumb: 'assets/prev1.jpeg',
      url: 'https://www.youtube.com/watch?v=oCFcm9o4WLY',
    ),
    Tip(
      thumb: 'assets/prev2.jpeg',
      url: 'https://www.youtube.com/watch?v=ZRDn84k6HxU',
    ),
    Tip(
      thumb: 'assets/prev3.jpeg',
    ),
  ];

  static List<Tip> testimonial = [
    Tip(
      thumb: 'assets/TESTIMONY 1.png',
      url: 'https://www.youtube.com/watch?v=HOFLQhlqU6c',
    ),
    Tip(
      thumb: 'assets/TESTIMONY 2.png',
      url: 'https://www.youtube.com/watch?v=m2YV8IF6gwg',
    ),
    Tip(
      thumb: 'assets/TESTIMONY 3.png',
      url: 'https://www.youtube.com/watch?v=42NJ1XcvPrI',
    ),
    Tip(
      thumb: 'assets/TESTIMONY 4.png',
      url: 'https://www.youtube.com/watch?v=Xb3xCyLEJBc',
    ),
  ];

  static Tip mainTip = Tip(
      thumb: 'assets/MAIN VIDEO.png',
      url: 'https://www.youtube.com/watch?v=iqz7XyXOIOI');

  static List<String> tips = [
    """Your face collects oil, dirt and dust throughout the day so it's important to use a gentle cleanser to wash all the debris off.
    
This will help to prevent water loss and keep your skin supple maintaining oil balance.
""",
    "Don't forget to cleanse, tone and moisturize daily, morning  and night in addition to eating healthy foods and drinking water.It is important to maintain to maintain this routine to ensure that the dirt your face collects is being washed off to prevent your pores from being blocked which causes pimples, blackheads, etc.",
    """It is important to remove dead cells so that your skin can be more receptive to your skincare products, then follow up with an exfoliator of your choice. It is also important to choose an exfoliator gentle enough for your skin type, and you don't want to over-exfoliate because it can work against your glowing skin process and cause more breakouts and dry patches.

Next, follow with toner and moisturizer after all grime has been washed off.
""",
    """The day after exfoliating you may notice that your skin is smoother and softer. You should still cleanse, tone and moisturize your face daily and drink water and eat nutritious foods.""",
    """Adding a mask into your weekly routine is a great way to draw out any impuritiesand/or add moisture to your skin, depending on the type of mask.

The best mask to use the day after exfoliating is a hydrating mask .
""",
    """ A peel off mask is perfect for removing gunk in your skin to reveal a brighter and smoother complexion.

A peel off mask will actually pull debris and impurities from your pores, while hydrating masks works to add an extra dose of hydration to skin.
""",
    """Congrats, You've reached the week mark, by now your skin should be visibly brighter, smoother, softer, hydrated and should appear more radiant and you should be on the right track to a glowing complexion.

However, just because you've reached day 7 doesn't mean you can stop here. In order to maintain your glowing skin, you have to remember that it is important to cleanse, tone and moisturize daily.

It is also essential that you remember to exfoliate 1-2 times a week and use face masks 1-2 times a week as "boosters" to your routine. Don't forget the importance of living a healthy lifestyle, beauty starts from within so make sure you take care of your yourself internally as well.

Finally, use Luminous Nivea Anti-dark spots and Serum to nourish your face and help it breathe better. Luckily for you, everything you need to make your face glow is already in it and it's for all skin types.
"""
  ];
}

class TipsModal extends StatefulWidget {
  final int index;
  const TipsModal({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<TipsModal> createState() => _TipsModalState();
}

class _TipsModalState extends State<TipsModal> {
  bool serum = false;
  bool lotion = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: const BoxDecoration(color: AppColors.paleGold),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
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
                            const Text(
                                'Have you applied the\nLuminous Serum Today?'),
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
                      const SizedBox(height: 20),
                      const Text(
                        'YOUR TIP FOR THE DAY',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 49, 35, 30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Expanded(
                              child: Divider(
                            color: AppColors.darkGold,
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          HexagonBox(
                            child: Image.asset(
                              'assets/day ${widget.index + 1}.jpeg',
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Expanded(
                              child: Divider(
                            color: AppColors.darkGold,
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        TipsData.tips[widget.index],
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
