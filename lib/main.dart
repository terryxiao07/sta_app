import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: Styles.fontFamilyTitles,
            fontSize: Styles.fontSizeExtraLarge,
            fontWeight: FontWeight.bold,
            color: Styles.primary,
          ),
          bodyLarge: TextStyle(
            fontFamily: Styles.fontFamilyNormal,
            fontSize: Styles.fontSizeMedium,
            color: Styles.grey,
          ),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0; // Tracks the currently selected tab

  // Screens for navigation
  static const List<Widget> _screens = [
    HomeScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWideScreen = constraints.maxWidth > 1080; // Check if TV layout

        return Scaffold(
          body: _screens[_selectedIndex], // Display the selected screen
          bottomNavigationBar: isWideScreen
              ? null // Hide BottomNavigationBar on wide screens
              : BottomNavigationBar(
                  currentIndex: _selectedIndex, // Highlight the selected tab
                  onTap: _onItemTapped, // Handle tap on navigation items
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.menu),
                      label: 'Menu',
                    ),
                  ],
                  selectedItemColor: Styles.primary, // Active icon color
                  unselectedItemColor: Styles.grey, // Inactive icon color
                  backgroundColor: Styles.white, // Background color of the nav bar
                ),
        );
      },
    );
  }
}
