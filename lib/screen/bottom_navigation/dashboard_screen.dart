import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_clone_app/screen/bottom_navigation/cart_screen.dart';
import 'package:swiggy_clone_app/screen/bottom_navigation/explore_screen.dart';
import 'package:swiggy_clone_app/screen/bottom_navigation/food_screen.dart';
import 'package:swiggy_clone_app/screen/bottom_navigation/swiggy_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentScreen = 0;

  final List<Widget> screens = [
    const SwiggyScreen(),
    const FoodScreen(),
    const ExploreScreen(),
    const CartScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: myBottomNav(context),
    );
  }

  myBottomNav(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 7,
          ),
        ],
      ),
      // Bottom item
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(0, "Swiggy", "assets/image/Swiggy-Emblem.png"),
          buildNavItem(1, "Food", "assets/icons/cooking.png"),
          buildNavItem(2, "Explore", "assets/icons/explore.png"),
          buildNavItem(3, "Reorder", "assets/icons/shopping-cart.png"),
        ],
      ),
    );
  }

  // ........................... Custom widgets ....................//
  Widget buildNavItem(int index, String label, String iconPath) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 30,
            height: 30,
            color: currentScreen == index ? Colors.deepOrange : Colors.black54,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentScreen == index ? Colors.deepOrange : Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
