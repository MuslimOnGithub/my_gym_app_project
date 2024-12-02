import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:gym_app/User/history_page.dart';
import 'package:gym_app/User/homebage.dart';
import 'package:gym_app/User/profile.dart';
import 'package:gym_app/User/stats_page.dart';

class NavigationController extends GetxController {
  int currentTap = 0;

  List<Widget> pages = const [
    HomePage(),
    StatsPage(),
    HistoryPage(),
    Profile()
  ];

  void goToPage(int index) {
    currentTap = index;
    update();
  }
}
