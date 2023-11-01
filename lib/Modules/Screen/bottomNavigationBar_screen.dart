import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';

import 'Calls/call_screen.dart';
import 'Contacts/Contacts_screen.dart';
import 'Home/Home_screen.dart';
import 'Setting/Setting_screen.dart';

class Bottamnavigation extends StatefulWidget {
  const Bottamnavigation({super.key});

  @override
  State<Bottamnavigation> createState() => _BottamnavigationState();
}

class _BottamnavigationState extends State<Bottamnavigation> {
  final List pages = [
    const HomeScreen(),
    const Callscreen(),
    const ContactsScreen(),
    const SettingScreen(),
  ];

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor:  AppColors.secondaryColor,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        onTap: onItemTapped,
      ),
    );
  }
}
