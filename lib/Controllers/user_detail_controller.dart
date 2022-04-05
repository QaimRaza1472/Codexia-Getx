import 'package:get/get.dart';
import '../Views/signup_screen.dart';

class UserDetailController extends GetxController{

 /*@override
  void refresh() {
    // TODO: implement refresh
    super.refresh();
  }
  */

  void LogOut(){
    Get.offAll(
      SignUpScreen(),
      transition: Transition.fade,
      duration: const Duration(milliseconds: 1700),
    );




  }


}