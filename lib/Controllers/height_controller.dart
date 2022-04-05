import 'package:get/get.dart';
import '../Views/gender_screen.dart';


class HeightController extends GetxController{

  var height = [
    "162",
    "163",
    "164",
    "165",
    "166",
    "167",
    "168",
  ];
  var height_unit = ["CM", "FT/IN"];




  void  Nav(){
    Get.to(

      GenderScreen(),

      //SelectGenderScreen(),

      transition: Transition.upToDown,
      duration: Duration(milliseconds: 1000),
    );
  }
}