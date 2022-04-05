import 'package:codexia_getx/Views/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Background/background.dart';
import '../Controllers/current_weight_controller.dart';
import '../Theme/const.dart';



class CurrentWeightScreen extends StatelessWidget {
   CurrentWeightScreen({Key? key}) : super(key: key);

   CurrentWeightController weightController=Get.put(CurrentWeightController());
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
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height1 * 0.12, bottom: height1 * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/Logo Icon.png",
                        scale: 2.7,
                      ),
                      SizedBox(
                        height: height1 * 0.02,
                      ),
                      Text(
                        "What's your ",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: height1 * 0.01,
                      ),
                      Text(
                        "current weight?",
                        style: headingStyle,
                      ),
                      SizedBox(
                        height: height1 * 0.05,
                      ),
                      Container(
                        height: 100,
                        width: width1 * 0.95,
                        // color: Colors.yellow,
                        child:Obx((){
                          return
                            ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: weightController.weight.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0, horizontal: 2),
                                    child: GestureDetector(
                                      onTap: () {

                                        /*  setState(() {
                                      selected_weight = index;
                                    });*/

                                      },
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 1.3,
                                                color: kWhiteColor
                                              //color: selected_weight == index ? kWhiteColor : Colors.transparent,
                                            )),
                                        child: Center(
                                          child: Text(
                                            weightController.weight[index],
                                            style: const TextStyle(
                                              color: kWhiteColor,
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                });
                        }
                      ),
                      ),
                      SizedBox(
                        height: height1 * 0.02,
                      ),
                      Container(
                        height: 100,
                        width: 155,
                        child:Obx((){
                          return    ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: weightController.weight_unit.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      /*setState(() {
                                      selected_unit = index;
                                    });*/

                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                              BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 1.3,
                                                  //color: selected_unit == index ? kWhiteColor : Colors.transparent,
                                                  color: kWhiteColor
                                              )),
                                          child: Center(
                                            child: Text(
                                              weightController.weight_unit[index],
                                              style: const TextStyle(
                                                color: kWhiteColor,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              );
                        }

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
          padding: EdgeInsets.only(bottom: width1 * 0.05),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: PrimaryButton(
              width1: width1,
              button_name: "NEXT",
              button_pressed: () {
                weightController.Nav();
              },
            ),
          ),
        ),
      ),
    );
  }
}
