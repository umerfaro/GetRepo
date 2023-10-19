import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ViewModel/SliderContoller.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  final SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Center(

        child: Column(
          children: [
            Obx(() {
              return Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple.withOpacity(sliderController.sliderValue.value),
              );
            }),
            Obx(() {
              return   Slider(
                value: sliderController.sliderValue.value,
                onChanged: (value) {
                  sliderController.onSliderChanged(value);
                },
              );
            }),

          ],
        ),
      ),
    );
  }
}
