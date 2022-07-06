import 'package:flutter/material.dart';
import 'package:nivea/home_page.dart';
import 'package:nivea/main_tips_page.dart';
import 'package:nivea/profile_page.dart';
import 'package:nivea/tips_modals.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      TipsData.openTip(context, 6);
    });
  }

  int index = 0;
  List<Widget> widgets = [
    const SafeArea(child: HomePage()),
    Container(),
    Container(),
    const SafeArea(child: Tips()),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: widgets[index]),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 34,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
