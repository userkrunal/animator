import 'package:animator/animator/view/animator_screen.dart';
import 'package:animator/animator/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => HomeScreen(),
        '/animator':(p0) => AnimatorScreen()
      },
    )
  );
}