import 'package:flutter/material.dart';
import 'package:swiggy_clone_app/screen/bottom_navigation/dashboard_screen.dart';
import 'package:swiggy_clone_app/screen/location_screen.dart';
import 'package:swiggy_clone_app/screen/notification_screen.dart';
import 'package:swiggy_clone_app/screen/start_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  DashboardScreen(),
    );
  }
}

