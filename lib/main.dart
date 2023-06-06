import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_shop/screen/splashscreen.dart';
//import 'package:my_shop/screen/splashscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Varela',
        dividerColor: Colors.black54,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


