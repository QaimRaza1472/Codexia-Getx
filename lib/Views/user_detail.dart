import 'package:codexia_getx/Views/user_detail_row.dart';
import 'package:flutter/material.dart';
import '../Background/background.dart';
import '../Controllers/user_detail_controller.dart';
import '../Theme/const.dart';
import 'main_button.dart';
import 'user_detial_container.dart';
import 'package:get/get.dart';


class UserDetail extends StatelessWidget {
   UserDetail({Key? key}) : super(key: key);

   UserDetailController userDetailController=Get.put(UserDetailController());


  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BackgroundWidget(
        showBackgroundImage: false,
        showTopOval: false,
        showBackgroundInDetailScreen: true,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height1 * 0.07, bottom: height1 * 0.02),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: kgreyColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kBorder_Color,
                            width: 1.7,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/profile.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.025,
                      ),
                      const Text(
                        "Henry Spectre",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.025,
                      ),
                      const Text(
                        "Age: 24y",
                        style: TextStyle(
                          color: kgreyColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.025,
                      ),
                      const Text(
                        "Gender: Male",
                        style: TextStyle(
                          color: kgreyColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 90,
                        width: width1 * 0.95,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow:[containerShadow],

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DetailContainer(
                              "Weight Lose",
                              "Goal",
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              color: kgreyColor,
                            ),
                            DetailContainer(
                              "55 KG",
                              "Weight",
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              color: kgreyColor,
                            ),
                            DetailContainer(
                              "164 CM",
                              "Height",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          //height: height1 * 0.8,
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Column(
                                    children: [
                                      DetailRow(
                                        "Coach Name:",
                                        'John Wick',
                                        " ",
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      DetailRow(
                                        "",
                                        '+1135900000000',
                                        "assets/call_icon.svg",
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      DetailRow(
                                        "",
                                        'Country Name',
                                        "assets/country_icon.svg",
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      DetailRow(
                                        "",
                                        'Address here...',
                                        "assets/location_icon.svg",
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height1 * 0.02),
                                  child: MainButton(
                                    width1: width1,
                                    button_name: "DONE",
                                    button_pressed: () {
                                      userDetailController.LogOut();
                                    },
                                  ),
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
        mainButton: null,
      ),
    );
  }

}

