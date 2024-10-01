import 'package:flutter/material.dart';
import 'package:parkirin/common/widgets/bottom_navbar.dart';
import 'package:parkirin/features/driver/views/driver_home_screen.dart';
import 'package:parkirin/features/driver/views/driver_history_screen.dart';
import 'package:parkirin/features/driver/views/driver_scan_screen.dart';
import 'package:parkirin/features/driver/views/driver_account_screen.dart';
import 'package:parkirin/features/driver/views/driver_setting_screen.dart';

class DriverMainScreen extends StatefulWidget {
  const DriverMainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<DriverMainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const DriverHomePage(),
    const HistoryPage(),
    const ScanPage(),
    const AccountPage(),
    const SettingsPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomBottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
