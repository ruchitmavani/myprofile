import 'package:flutter/material.dart';
import 'package:myprofilr/local_storage.dart';
import 'package:myprofilr/utils/color_constants.dart';
import 'package:myprofilr/views/home_screen/components/notification_section.dart';
import 'package:myprofilr/views/home_screen/components/profile_circle.dart';
import 'package:myprofilr/views/home_screen/components/update_section.dart';
import 'package:myprofilr/views/login_screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTxt = TextEditingController();

  final List<String> notifications = [
    'Apple',
    'Google',
    'Facebook',
    'Top 20 Tech Stocks',
    'Amazon',
    'Microsoft',
    'Hello',
    'NFT',
    'Ubs'
  ];
  List<String> filteredNotifications = [];
  final List<String> updates = [
    'Global U.S. Stocks Are Now Live!',
    'Global Market Indices',
    'US Markets News',
    'Stock Market Data - CNN International',
    'World Stock Markets - News, Maps',
    'Stocks - Bloomberg.com',
    'Stock Market LIVE: Sensex above 57,500'
  ];
  List<String> filteredUpdates = [];

  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    resetValues();
  }

  @override
  void dispose() {
    _searchTxt.dispose();
    super.dispose();
  }

  void resetValues() {
    filteredNotifications = notifications;
    filteredUpdates = updates;
    setState(() {});
  }

  void onSearch(String text) {
    filteredUpdates = [];
    filteredNotifications = [];

    for (final element in updates) {
      if (element.toLowerCase().contains(text.toLowerCase())) {
        filteredUpdates.add(element);
      }
    }

    for (final element in notifications) {
      if (element.toLowerCase().contains(text.toLowerCase())) {
        filteredNotifications.add(element);
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Profile App',
              style: TextStyle(fontWeight: FontWeight.bold, color: primary),
            ),
            const Spacer(),
            if (isSearching)
              Expanded(
                child: TextFormField(
                  controller: _searchTxt,
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  onChanged: onSearch,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearching = !isSearching;
                          _searchTxt.clear();
                          resetValues();
                        });
                      },
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                ),
              )
            else
              IconButton(
                onPressed: () {
                  setState(() {
                    isSearching = !isSearching;
                    _searchTxt.clear();
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: primary,
                ),
              ),
            if (!isSearching) const SizedBox(width: 30),
            if (!isSearching)
              GestureDetector(
                onTap: () {
                  sharedPrefs.logout();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: const ProfileCircle(
                  image: '',
                ),
              )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            NotificationSection(
              notifications: filteredNotifications,
            ),
            const SizedBox(height: 15),
            UpdateSection(
              updates: filteredUpdates,
            ),
          ],
        ),
      ),
    );
  }
}
