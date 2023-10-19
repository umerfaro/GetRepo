import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ViewModel/ImageController.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {

  final ImageController imageController= Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: imageController.imagePath.isNotEmpty ?
                FileImage(File(imageController.imagePath.toString())):null,
              ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

               ElevatedButton(onPressed: (){
                 imageController.getImage();
               }, child: Text('Gallery')),
               ElevatedButton(onPressed: (){
                 imageController.getImageFromCamera();
               }, child: Text(' Camera')),
             ],
           )
          ],
        );
      }),
    );
  }
}
