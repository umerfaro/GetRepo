import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var  name;
  ScreenTwo({super.key, required this.name});

  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
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
                  Get.back();
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
