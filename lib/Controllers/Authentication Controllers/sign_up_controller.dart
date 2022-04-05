import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Views/goal_screen.dart';


class SignUpController extends GetxController{


 String name="";
 String coachName="";
 String age="";
 String country="";
 String phone_number="";
 String address ="";

TextEditingController nameController=TextEditingController();
TextEditingController coachController=TextEditingController();
TextEditingController ageController=TextEditingController();
TextEditingController countryController=TextEditingController();
TextEditingController phoneController=TextEditingController();
TextEditingController addressController=TextEditingController();

void next(){
 Get.to(GoalScreen(),
  //GoalScreen(),
  transition: Transition.zoom,
  duration: const Duration(milliseconds: 500),
 );


}





}