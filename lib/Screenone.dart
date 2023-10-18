import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var  name;
   ScreenOne({super.key, required this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Get.arguments[0]),
        ),
        body:Column(
          children: [
            Center(
              child: TextButton(
                onPressed: (){

                  // We can also pass data as a Map like:
                  // Get.toNamed('/profile_screen', arguments: {
                  //   'name': 'CodingZest'
                  // });
                  // to get data on another screen simply do this:
                  // Get.arguments['name']

                  //Get.back();
                  Get.toNamed('/screentwo',arguments: [
                    'Umer12',
                    'Ali'
                  ]);
                },
                child: Text('back'),
              ),
            )
          ],
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
