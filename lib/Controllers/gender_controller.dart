import 'package:get/get.dart';
import '../Views/user_detail.dart';

class GenderController extends GetxController{
  var gender = [
    "MALE",
    "FEMALE",
    "OTHER",
  ].obs;


  void  select(){

    Future.delayed(const Duration(seconds: 2), () {
      Get.to(

      //  UserDetailScreen(),

        UserDetail(),

        transition: Transition.circularReveal,
        duration: const Duration(milliseconds: 1700),
      );
    });


  }








}