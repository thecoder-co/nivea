import 'package:flutter/material.dart';
import 'package:nivea/initial_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(
          color: AppColors.darkGold,
        ),

        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.paleGold,
          selectedItemColor: AppColors.darkGold,
          unselectedItemColor: AppColors.lightGold,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.darkGold),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGold,
              width: 1,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGold,
              width: 1,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGold,
              width: 1,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkGold,
              width: 2,
            ),
          ),
        ),
      ),
      home: const InitialPage(),
    );
  }
}

class AppColors {
  static const lightGold = Color(0xffC3A557);
  static const paleGold = Color(0xffF4EFE0);
  static const darkGold = Color(0xffA38538);
}
