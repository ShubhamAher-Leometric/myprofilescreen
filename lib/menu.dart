import 'package:flutter/material.dart';
import 'package:my_property/favourites_screen/favourites_listing.dart';
import 'package:my_property/home_screens/homescreen.dart';
import 'package:my_property/user_profile/profile_screen.dart';
import 'package:my_property/intrested_property/intrested_property_listing.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Homescreen(),
    IntrestedPropertyListingScreen(),
    FavouritesListingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildIcon(String selectedIconPath, String unselectedIconPath, int index) {
    bool isSelected = _selectedIndex == index;
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0), // Adjust the bottom padding as needed
          child: Image.asset(isSelected ? selectedIconPath : unselectedIconPath, width: 30, height: 30),
        ),
        if (isSelected)
          Positioned(
            bottom: 0,
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF234F68),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed, // Disable animations
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon('assets/bottom_bar_icons/2.png', 'assets/bottom_bar_icons/1.png', 0),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: _buildIcon('assets/bottom_bar_icons/4.png', 'assets/bottom_bar_icons/3.png', 1),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: _buildIcon('assets/bottom_bar_icons/6.png', 'assets/bottom_bar_icons/5.png', 2),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: _buildIcon('assets/bottom_bar_icons/8.png', 'assets/bottom_bar_icons/7.png', 3),
              label: '', // No label
            ),
          ],
        ),
      ),
    );
  }
}
