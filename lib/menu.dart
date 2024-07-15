import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/favourites_screen/favourites_listing.dart';
import 'package:my_property/home_screens/homescreen.dart';
import 'package:my_property/user_profile/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'intrested_property/intrested_property_listing.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: Homescreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Image.asset('assets/bottom_bar_icons/2.png', width: 30, height: 30),
              inactiveIcon: Image.asset('assets/bottom_bar_icons/1.png', width: 30, height: 30),
              title: "Home",
            ),
          ),

          PersistentTabConfig(
            screen: IntrestedPropertyListingScreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Image.asset('assets/bottom_bar_icons/4.png', width: 30, height: 30),
              inactiveIcon: Image.asset('assets/bottom_bar_icons/3.png', width: 30, height: 30),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: FavouritesListingScreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Image.asset('assets/bottom_bar_icons/6.png', width: 30, height: 30),
              inactiveIcon: Image.asset('assets/bottom_bar_icons/5.png', width: 30, height: 30),
              title: "Favorite",
            ),
          ),
          PersistentTabConfig(
            screen: ProfileScreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Image.asset('assets/bottom_bar_icons/8.png', width: 30, height: 30),
              inactiveIcon: Image.asset('assets/bottom_bar_icons/7.png', width: 30, height: 30),              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style5BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
