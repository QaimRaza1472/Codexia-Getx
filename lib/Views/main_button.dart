import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Theme/const.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.width1,
    required this.button_name,
    required this.button_pressed,
  }) : super(key: key);

  final double width1;
  final String button_name;
  final VoidCallback button_pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: button_pressed,
      child: Container(
        height: 55,
        width: width1 * 0.86,
        decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black45.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 0),
              ),
            ]),
        child: Center(
          child: Text(
            button_name,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
