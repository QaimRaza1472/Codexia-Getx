import 'package:get/get.dart';

import '../Views/select_height_screen.dart';


class CurrentWeightController extends GetxController{

  var weight = [
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
    "61",
  ].obs;

  var weight_unit = ["KG", "LB"].obs;




  void  Nav(){

    Get.to(
      SelectHeightScreen(),
      //SelectHeightScreen(),

      transition: Transition.zoom,
      duration: Duration(milliseconds: 700),
    );
  }
}