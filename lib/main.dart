import 'package:flutter/material.dart';
import 'app/modules/views/home_view.dart';
import 'package:get/get.dart';
import 'app/modules/controllers/home_controller.dart'; // Sesuaikan dengan lokasi file HomeController Anda

void main() {
   Get.put(HomeController());
  runApp(MaterialApp(
    title: 'instagram',
    home: HomeView(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }
