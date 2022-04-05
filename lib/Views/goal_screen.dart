import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Background/background.dart';
import '../Controllers/goal_controller.dart';
import '../Theme/const.dart';

class GoalScreen extends StatelessWidget {
  GoalScreen({Key? key}) : super(key: key);

  GoalController goalController = Get.put(GoalController());

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
                      Text(
                        "What's your Goal?",
                        style: headingStyle,
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
              child: Obx((){
                return ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: goalController.goals.length,
                    //goals.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.0),
                        child:
                        TextButton(
                          onPressed: /* () {
                          goalController.selected =  index;
                          print("------------- On Pressed  ------------- Value ${goalController.selected}");



                          goalController.select(index);


                       */ /*   setState(() {
                            selected_goal = index;
                          });*/ /*

                        },
                        */

                              () {
                            //  goalController.selected.value= index;
                            goalController.select();
                          },

                          
                           //goalController.select(index),
                          child:Container(
                            height: 60,
                            width: width1 * 0.92,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: kWhiteColor,
                                  width: goalController.selected == index
                                      ? 2
                                      : 1.3,
                                )),
                            child: Center(
                              child: Text(
                                goalController.goals[index],
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold,
                                  //  fontSize:  goalController.goals[index ]==index ?53:19,
                                  //fontSize:  goalController.selected == index ? 53 : 19,
                                  //  fontSize: goalController.select().new_selected;

                                  fontSize:index== goalController.new_selected
                                      ? 45
                                      : 19,
                                  // fontSize: goalController.textSize,
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
          ),
        ),
      ),
    );
  }
}
