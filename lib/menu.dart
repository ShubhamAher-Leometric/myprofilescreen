import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/home_screens/homescreen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: Homescreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Icon(Icons.home),
              inactiveIcon: Icon(Icons.home_outlined),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: Homescreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Icon(Icons.brightness_auto_rounded),
              inactiveIcon: Icon(Icons.brightness_auto_outlined),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: Homescreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Icon(Icons.favorite_rounded),
              inactiveIcon: Icon(Icons.favorite_border_rounded),
              title: "Messages",
            ),
          ),
          PersistentTabConfig(
            screen: Homescreen(),
            item: ItemConfig(
              activeForegroundColor: Color(0xFF234F68),
              icon: Icon(Icons.settings),
              title: "Settings",
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
