import 'package:flutter/material.dart';

class BackgroundWidget extends StatefulWidget {
  bool showTopOval = true;
  bool showBackgroundImage = true;
  bool showBackgroundInDetailScreen = true;
  var contentScreen = null;
  var mainButton = null;

  BackgroundWidget({
    Key? key,
    required this.showTopOval,
    required this.showBackgroundImage,
    required this.showBackgroundInDetailScreen,
    @required this.contentScreen,
    @required this.mainButton,
  }) : super(key: key);

  _BackgroundScafoldState createState() => _BackgroundScafoldState();
}

class _BackgroundScafoldState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    List<Widget> stack_childerns = [];
    if (widget.showBackgroundImage) {
      stack_childerns.add(Container(
        height: height1,
        width: width1,
        child: Image.asset(
          "assets/Background_image.png",
          fit: BoxFit.cover,
        ),
      ));
    }

    if (widget.showTopOval) {
      stack_childerns.add(Positioned(
        top: -50,
        child: Container(
          width: width1,
          child: Image.asset(
            "assets/Shape.png",
            fit: BoxFit.cover,
          ),
        ),
      ));
    }

    if (widget.showBackgroundInDetailScreen) {
      stack_childerns.add(
        Positioned(
          top: -178,
          //top: -height1*0.215,
          child: Container(
            height: 570,
            //height: height1*0.81,
            //color: Colors.yellow,
            width: width1,
            child: Image.asset(
              "assets/Shape.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    if (widget.contentScreen != null) {
      stack_childerns.add(widget.contentScreen);
    }
    /////////////////////////////////////// Top Navigation  /////////////////////////////////////////////
    if (widget.mainButton != null) {
      stack_childerns.add(widget.mainButton);
    }
    /////////////////////////////////////// Top Navigation  //////////////////////////////////////////
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: stack_childerns,
      ),
    );
  }
}
