import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home.dart';
import '../widgets/timeline.dart';
import '../widgets/search.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidget = [
    TimelineView(),
    SearchView(),
    Center(
      child: Text(
        'Reels',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Shop',
        style: TextStyle(fontSize: 20),
      ),
    ),
    HomeWidget(),
  ];
}
