import 'package:flutter/material.dart';
import 'package:my_sons/features/home_1/presentation/views/home_1.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../notifications/presentation/views/notifications_view.dart';




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<PersistentBottomNavBarItem> _navBarsItems = [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Color(0xFF01D9AC),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary:Color(0xFF01D9AC),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF01D9AC),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF01D9AC),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF01D9AC),
        inactiveColorPrimary: Colors.grey,
      ),
    ];

    List<Widget> _buildScreens() {
      return [
        Home1(),
        NotificationView(),
        Home1(),
        NotificationView(),
        Home1(),
      ];
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        navBarHeight: 60.0,
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
