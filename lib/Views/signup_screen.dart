import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Background/background.dart';
import '../Controllers/Authentication Controllers/sign_up_controller.dart';
import '../Theme/const.dart';
import 'build_textField.dart';
import 'main_button.dart';
import 'package:get/get.dart';



class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
  SignUpController signUpController=Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BackgroundWidget(
        showBackgroundImage: false,
        showTopOval: true,
        showBackgroundInDetailScreen: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.start,
            //physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height1 * 0.07, bottom: height1 * 0.02),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/Logo Icon.png",
                        scale: 3.5,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: width1 * 0.93,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow:[containerShadow],

                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: height1 * 0.03),
                            child: Column(
                              children: [
                                const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: kprimaryColor,
                                      letterSpacing: 1.1,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: height1 * 0.02,
                                ),
                                const Text(
                                  "Please enter your credentials to proceed ",
                                  style: TextStyle(
                                    letterSpacing: 1.01,
                                    color: kTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: height1 * 0.02,
                                ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 107,
                                        width: 107,
                                        decoration: BoxDecoration(
                                          color: kgreyColor.withOpacity(0.1),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: kBorder_Color,
                                            width: 1.3,
                                          ),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                              "assets/profile.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 1,
                                        right: 1,
                                        child: Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                            color: kWhiteColor,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: kBorder_Color,
                                            ),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 18,
                                              color: kprimaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height1 * 0.02,
                                ),
                                buildTextField(
                                    hintText: "Name",
                                    inputType: TextInputType.name,
                                  controller: signUpController.nameController,
                                  onChanged: (value){
                                      signUpController.name=value;
                                      print("-------------------------------${signUpController.name}");
                                  }
                                ),
                                buildTextField(hintText:"User/Coach", inputType:TextInputType.name,
                                controller: signUpController.coachController,
                                  onChanged: (value){
                                  signUpController.coachName=value;
                                  print("-------------------------------${signUpController.coachName}");
                                  }
                                ),
                                buildTextField(hintText:"Age", inputType:TextInputType.number,
                                controller: signUpController.ageController,
                                  onChanged: (value){
                                  signUpController.age=value;
                                  print("-------------------------------${signUpController.age}");

                                  }
                                ),
                                buildTextField(hintText:"Country",inputType: TextInputType.name,
                                controller: signUpController.countryController,
                                  onChanged: (value){
                                  signUpController.country=value;
                                  print("-------------------------------${signUpController.country}");

                                  }
                                ),
                                buildTextField(hintText:"Phone Number", inputType:TextInputType.phone,
                                controller: signUpController.phoneController,
                                    onChanged: (value){
                                    signUpController.phone_number=value;
                                    print("-------------------------------${signUpController.phone_number}");
                                    }
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(17, 0, 17, 10),
                                  child: Container(
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      color: kWhiteColor,
                                    ),
                                    child: TextFormField(
                                      controller: signUpController.addressController,
                                      onChanged: (value){
                                        signUpController.address=value;
                                        print("---------------------${signUpController.address}");
                                      },
                                      cursorColor: kprimaryColor,
                                      maxLines: 8,
                                      style: const TextStyle(
                                        color: kprimaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.1,
                                      ),
                                      decoration: const InputDecoration(
                                        fillColor: kTextFieldBackground,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: kTextFiledBorder,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1.5,
                                            //color: Colors.green
                                            color: kBorder_Color,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                        enabled: true,
                                        contentPadding: EdgeInsets.all(17),
                                        hintText:
                                        "Address (for courier deliveries)-\nNot to be publicly shared",
                                        hintStyle: TextStyle(
                                            color: kTextColor,
                                            fontSize: 14,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height1 * 0.02),
                                  child: MainButton(
                                    width1: width1,
                                    button_name: "SIGN UP",
                                    button_pressed: () {
                                      signUpController.next();
                                    },
                                  ),
                                ),
                                const Text(
                                  "OR CONNECT USING",
                                  style: TextStyle(
                                    color: kprimaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: height1 * 0.02),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/Facebook.svg"),
                                    SizedBox(
                                      width: width1 * 0.07,
                                    ),
                                    SvgPicture.asset("assets/Twitter.svg"),
                                  ],
                                ),
                                SizedBox(height: height1 * 0.04),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
