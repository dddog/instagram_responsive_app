import 'package:flutter/material.dart';
import 'package:instagram_responsive_app/responsive/mobile_screen_layout.dart';
import 'package:instagram_responsive_app/responsive/responsive_layout_screen.dart';
import 'package:instagram_responsive_app/responsive/web_screen_layout.dart';
import 'package:instagram_responsive_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: Scaffold(
            body: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        )));
  }
}