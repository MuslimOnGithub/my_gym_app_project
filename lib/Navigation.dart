import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gym_app/navigation_controller.dart';

class NavPage extends StatelessWidget {
  const NavPage({super.key, required this.isManager});

  final bool isManager;

  @override
  Widget build(BuildContext context) {
    return isManager ? _manager() : _user();
  }
}

_user() {
  return GetBuilder<NavigationController>(
    init: NavigationController(),
    builder: (controller) => Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: IndexedStack(
        index: controller.currentTap,
        children: controller.userPages,
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 22, left: 12, right: 12),
        child: GNav(
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            gap: 8,
            selectedIndex: controller.currentTap,
            onTabChange: (index) {
              controller.goToPage(index);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "home",
              ),
              GButton(
                icon: Icons.insert_chart,
                text: "Stats",
              ),
              GButton(
                icon: Icons.history,
                text: "History",
              ),
              GButton(
                icon: Icons.person_2,
                text: "Profile",
              ),
            ]),
      ),
    ),
  );
}

_manager() {
  return GetBuilder<NavigationController>(
    init: NavigationController(),
    builder: (controller) => Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: IndexedStack(
        index: controller.currentTap,
        children: controller.managerPages,
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 22, left: 12, right: 12),
        child: GNav(
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            gap: 8,
            selectedIndex: controller.currentTap,
            onTabChange: (index) {
              controller.goToPage(index);
            },
            tabs: const [
              GButton(
                icon: Icons.insert_chart,
                text: "Stats",
              ),
              GButton(
                icon: Icons.list,
                text: "All",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ]),
      ),
    ),
  );
}
