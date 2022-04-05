import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Background/background.dart';
import 'package:get/get.dart';
import 'Theme/const.dart';
import 'Views/signup_screen.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Codexia Tech",
      color: kprimaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        applyElevationOverlayColor: true,
        primarySwatch: Colors.grey,
      ),
      routes: {
        'sign_up_testing':(context)=>SignUpScreen(),
      },
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), finished);
  }

  void finished() {
    Navigator.pushNamed(context, 'sign_up_testing');
  }

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: BackgroundWidget(
        showBackgroundImage: false,
        showTopOval: true,
        showBackgroundInDetailScreen: false,
        contentScreen: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: height1 * 0.12),
            child: Image.asset(
              "assets/Logo.png",
              scale: 2.7,
            ),
          ),
        ),
        mainButton: null,
      ),
    );
  }
}
