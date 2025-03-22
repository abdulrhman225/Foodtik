import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {

  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      favorityScreen(),
      CartScreen(),
      HistoryScreen(),
      profileScreen()// Example screen
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_border),
        title: "Favorite",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_outlined , color: Colors.white,),
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.history_toggle_off),
        title: "History",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "Profile",
        activeColorPrimary: ConstantColors.green_background,
        inactiveColorPrimary: Colors.grey,
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
      items: _navBarsItems(),
      backgroundColor: Color(0xFFDBF4D1), // Background color of the nav bar
      handleAndroidBackButtonPress: true, // Handle Android back button
      resizeToAvoidBottomInset: true, // Adjust for keyboard
      stateManagement: true, // Persist state of screens
      navBarStyle: NavBarStyle.style15, // Use style 15
    );
  }
}

class favorityScreen extends StatelessWidget {
  const favorityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

