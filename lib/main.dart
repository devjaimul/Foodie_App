

import 'package:flutter/material.dart';
import 'package:foodie/utils/app_colors.dart';
import 'package:foodie/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColors.withOpacity(0.9),
  appBarTheme:  AppBarTheme(
    backgroundColor:AppColors.primaryColor ,
    iconTheme: IconThemeData(
      color: AppColors.whiteColors
    ),
    centerTitle: true,
    foregroundColor: AppColors.whiteColors,
    titleTextStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
  )
      ),
    );
  }
}



