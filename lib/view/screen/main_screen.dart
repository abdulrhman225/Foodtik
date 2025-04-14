import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/view/screen/favorite_screen.dart';
import 'package:Foodtik/view/screen/home_screen.dart';
import 'package:Foodtik/view/screen/profile_screen.dart';
import 'package:Foodtik/view/screen/track_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'history_screen.dart';
import 'main_cart_screen.dart';

class MainScreen extends StatelessWidget {

  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      FavoriteScreen(),
      MainCartScreen(),
      TrackOrderScreen(),
      ProfileScreen()// Example screen
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Theme.of(context).colorScheme.onSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_border),
        title: "Favorite",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Theme.of(context).colorScheme.onSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_outlined , color: Colors.white,),
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.location_pin),
        title: "Track",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Theme.of(context).colorScheme.onSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "Profile",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Theme.of(context).colorScheme.onSecondary,
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      hideNavigationBarWhenKeyboardAppears: true,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed, // Background color of the nav bar
      handleAndroidBackButtonPress: true, // Handle Android back button
      resizeToAvoidBottomInset: true, // Adjust for keyboard
      stateManagement: true, // Persist state of screens
      navBarStyle: NavBarStyle.style15, // Use style 15
    );
  }
}

