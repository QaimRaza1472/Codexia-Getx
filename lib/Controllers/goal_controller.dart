import 'package:get/get.dart';
import '../Views/current_weight_screen.dart';


class GoalController extends GetxController{
  var selected=0.obs;
   var  new_selected;

  var goals = [
     "Weight Loss",
     "Maintain",
     "Build Muscle",
   ].obs;


    void  select(){
    /*  selected.value = index;
      if(selected==index){
        new_selected.value =index;
        print("----------------- Bool Value  --------------");
        print(new_selected);

      }else{
        new_selected.value=index;
      }

     print("-----------  Goal Selected  -------- ${index}");*/


     Future.delayed(Duration(seconds: 2), () {
       Get.to(

         //CurrentWeightScreen(),
          CurrentWeightScreen(),

         transition: Transition.rightToLeftWithFade,
         duration: const Duration(milliseconds: 1000),
       );
     }
     );
   }








}