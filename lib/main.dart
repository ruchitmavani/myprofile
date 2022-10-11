import 'package:flutter/material.dart';
import 'package:myprofilr/views/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        dividerTheme: const DividerThemeData(
          space: 20
        )
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
