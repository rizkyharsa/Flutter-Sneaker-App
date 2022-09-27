import 'package:flutter/material.dart';
import 'package:my_shop/screen/splashscreen.dart';
//import 'package:my_shop/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 33, 150, 243),
        primarySwatch: Colors.blue,
        fontFamily: 'Varela',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


