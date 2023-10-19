import 'package:get/get.dart';

class FavContoller extends GetxController
{
  RxList<String> fruitList = ['Apple','Banana','Orange','Mango','Pineapple','Grapes','Watermelon','Strawberry','Cherry','Papaya'].obs;
  RxList favFruitList = [].obs;

 addToFavorite(String fruitName)
 {

   favFruitList.add(fruitName.toString());
   update();

 }
 removeFromFavourite(String value)
 {
    favFruitList.remove(value.toString());
    update();
 }

}