import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;



  void loginAPI() async {
    try {

      //if we want to pass data in raw form then
      // Map newData = {
      //   "email": emailController.value.text,
      //   "password": passwordController.value.text
      // };
      // final response = await post(Uri.parse("https://reqres.in/api/login"),
      //     body: jsonEncode(newData),);


      loading.value = true;
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email": emailController.value.text,
            "password": passwordController.value.text
          });
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar("Success", data['token'].toString(),backgroundColor: Colors.white,colorText: Colors.black);
      } else {
        loading.value = false;
        Get.snackbar("Error", data['error'].toString());
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Exception", e.toString(),colorText: Colors.white);
    }
  }
}
