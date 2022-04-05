import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Background/background.dart';
import '../Controllers/gender_controller.dart';
import '../Theme/const.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);

  GenderController genderController = Get.put(GenderController());

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BackgroundWidget(
        showBackgroundImage: true,
        showTopOval: false,
        showBackgroundInDetailScreen: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height1 * 0.12,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/Logo Icon.png",
                        scale: 2.7,
                      ),
                      SizedBox(
                        height: height1 * 0.02,
                      ),
                      const Text(
                        "What's your gender?",
                        style: TextStyle(
                          letterSpacing: 1.1,
                          fontSize: 27,
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        mainButton: Padding(
          padding: EdgeInsets.only(bottom: width1 * 0.07),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 240,
              width: width1 * 0.95,
              child: Obx(() {
                return ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: genderController.gender.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: TextButton(
                          onPressed: () {
                            /*  setState(() {
                            selected_gender = index;

                          });*/
                            genderController.select();
                          },
                          child: Container(
                            height: 60,
                            width: width1 * 0.92,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: kWhiteColor,
                                  //width: selected_gender == index ? 2 : 1.3,
                                  width: 2,
                                )),
                            child: Center(
                              child: Text(
                                genderController.gender[index],
                                style: const TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold,
                                  //fontSize: selected_gender == index ? 23 : 19,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }),
            ),
          ),
        ),
      ),
    );
  }
}
