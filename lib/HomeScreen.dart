import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/res/theme/darkTheme.dart';
import 'package:getx/res/theme/lightTheme.dart';

import 'Screenone.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body:Container(
        height: Get.height * 0.3,
        width: Get.width * 0.3,
        color: Colors.deepPurple,
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
 Get.snackbar('GetX Demo', 'This is a snackbar',
   snackStyle: SnackStyle.FLOATING,
 icon: Icon(Icons.error),
    shouldIconPulse: true,
    margin: EdgeInsets.all(10),
    borderRadius: 10,
 backgroundColor: Colors.deepPurple,
   snackPosition: SnackPosition.BOTTOM,

 );
      },
      child: Icon(Icons.add),
    )
    );

  }
}

// Column(
// children: [
// Center(
//
//
//
//
// // child: TextButton(
// //   onPressed: (){
// //    // Get.to(()=>  const ScreenOne(name: 'Umer',)
// //     Get.toNamed('/screenOne',arguments: [
// //       'Umer1',
// //       'Ali'
// //     ]);
// //
// //   },
// //   child: Text('Navigate to second screen'),
// // ),
// )
// ],
// )