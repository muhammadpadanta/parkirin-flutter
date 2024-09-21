import 'package:flutter/material.dart';
import 'features/driver/views/driver_home_page.dart'; // Import the driver home page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DriverHomePage(),
    );
  }
}
