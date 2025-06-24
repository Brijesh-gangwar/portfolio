import 'package:get/get.dart';


class AchievementsController extends GetxController {
  RxList<bool> hovers =[
    false,
    false,

  ].obs;


  onHover(int index,bool value){
    hovers[index]=value;
  }

  
}

