// sdk
import 'package:flutter/material.dart';

// app
import 'package:all_foods/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage()
    );
  }
}
