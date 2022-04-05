import 'package:flutter/material.dart';
import '../Theme/const.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
        height: 57,
        width: width1 * 0.9,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: kWhiteColor,
              width: 1.7,
            )),
        child: Center(
          child: Text(
            button_name,
            style: const TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
