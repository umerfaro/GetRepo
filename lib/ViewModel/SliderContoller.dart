

import 'package:get/get.dart';

class SliderController extends GetxController
{
  RxDouble sliderValue = 0.5.obs;
  void onSliderChanged(double value) {
    sliderValue.value = value;
    update();
  }
}