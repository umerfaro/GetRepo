import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ViewModel/FavContoller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

  final FavContoller favController = Get.put(FavContoller());


  @override
  Widget build(BuildContext context) {
    print("ExampleThree");
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body:ListView.builder(
          itemCount: favController.fruitList.length,
          itemBuilder: (context,index){

        return Card(
          child: ListTile(
            onTap: (){

              if(favController.favFruitList.contains(favController.fruitList[index].toString()))
                {
                  favController.favFruitList.remove(favController.fruitList[index].toString());

                }else
                  {
                    favController.favFruitList.add(favController.fruitList[index].toString());
                  }
            },
            title: Text(favController.fruitList[index]),
           trailing: Obx((){
             return Icon(Icons.favorite,color:favController.favFruitList.contains(favController.fruitList[index].toString()) ?Colors.white:Colors.red);
           }),
           // subtitle: Text(fruitList[index]),

          ),
        );
      }),
    );
  }
}
