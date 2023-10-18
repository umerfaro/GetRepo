import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ViewModel/CounterController.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController counterController = Get.put(CounterController());

  @override

  Widget build(BuildContext context) {
    print("counterScreen");
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Center(
        child: Obx(() {
          return Text(counterController.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        counterController.increment();
        },
        child: Icon(Icons.add),
      )
    );
  }
}
