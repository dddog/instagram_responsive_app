import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_responsive_app/firebase_config.dart';
import 'package:instagram_responsive_app/responsive/mobile_screen_layout.dart';
import 'package:instagram_responsive_app/responsive/responsive_layout_screen.dart';
import 'package:instagram_responsive_app/responsive/web_screen_layout.dart';
import 'package:instagram_responsive_app/screens/login_screen.dart';
import 'package:instagram_responsive_app/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        // apiKey: 'AIzaSyBy3ydTw-NdRGJ4EZu1oD9YjtgrjGoHokI',
        apiKey: FirebaseConfig.API_KEY,
        appId: FirebaseConfig.APP_ID,
        messagingSenderId: FirebaseConfig.MESSAGING_SENDER_ID,
        projectId: FirebaseConfig.PROJECT_ID,
        storageBucket: FirebaseConfig.STORAGE_BUCKET,
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
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
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
