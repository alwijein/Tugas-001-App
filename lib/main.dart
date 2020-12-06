import 'package:flutter/material.dart';
import 'package:algoritma_genetika/screens/home/home-screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tugas Lab",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
         iconTheme: IconThemeData(color: Colors.white)
        ),
        primaryColor: Color(0xFF64C7FE),
        accentColor: Colors.white,
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}
