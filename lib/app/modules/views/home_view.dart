import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() =>  controller.myWidget.elementAt(controller.indexWidget.value),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) => controller.changeIndexBottomNav(value),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.video_collection_outlined,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ]));
  }
}


  //  appBar: AppBar(
  //         title: Text('HomeView'),
  //         centerTitle: true,
  //       ),


  //  Expanded(child: