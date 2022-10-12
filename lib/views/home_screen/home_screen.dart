import 'package:flutter/material.dart';
import 'package:myprofilr/local_storage.dart';
import 'package:myprofilr/utils/color_constants.dart';
import 'package:myprofilr/views/home_screen/components/profile_circle.dart';
import 'package:myprofilr/views/home_screen/components/update_section.dart';
import 'package:myprofilr/views/login_screen/login_screen.dart';

import 'components/notification_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Profile App",
              style: TextStyle(fontWeight: FontWeight.bold, color: primary),
            ),
            const Spacer(),
            Icon(
              Icons.search,
              color: primary,
            ),
            const SizedBox(width: 30),
            GestureDetector(
              onTap: () {
                sharedPrefs.logout();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                    (route) => false);
              },
              child: const ProfileCircle(
                image: "",
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: const [
            NotificationSection(),
            SizedBox(height: 15),
            UpdateSection(),
          ],
        ),
      ),
    );
  }
}
