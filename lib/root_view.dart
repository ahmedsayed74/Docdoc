import 'package:flutter/material.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/features/auth/ui/screens/profile_screen.dart';
import 'package:mainpro/features/calender/ui/screens/calender_screen.dart';
import 'package:mainpro/features/chat/ui/screens/chat_screen.dart';
import 'package:mainpro/features/home/ui/screens/home_screen.dart';
import 'package:mainpro/features/search/ui/screens/search_bar_screen.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController controller = PageController();
  final List<Widget> _screens = [
    HomeScreen(),
    ChatScreen(),
    SearchBarScreen(),
    CalenderScreen(),
    ProfileScreen(),
  ];

  int currentScreen = 0;

  @override
  void initState() {
    // To start With First Page
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: _screens,
      ),

      // Bottom Nav Bar
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.secondarySRColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentScreen,

          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(index);
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey.shade700,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                currentScreen == 0 ? Icons.home_filled : Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentScreen == 1
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentScreen == 2
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentScreen == 3
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currentScreen == 4 ? Icons.person : Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

