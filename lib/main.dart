import 'package:flutter/material.dart';
import 'package:myprofilr/local_storage.dart';
import 'package:myprofilr/utils/mouse_drag_scroll.dart';
import 'package:myprofilr/views/home_screen/home_screen.dart';
import 'package:myprofilr/views/login_screen/login_screen.dart';

Future<void> main() async {
  await sharedPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          dividerTheme: const DividerThemeData(space: 20)),
      home: sharedPrefs.isLoggedIn() ? HomeScreen() : LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
