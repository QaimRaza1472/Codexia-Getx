import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Theme/const.dart';

Container DetailContainer(var info, String title) {
  return Container(
    height: 70,
    width: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          info,
          style: const TextStyle(
              color: kdetailTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
        Text(
          title,
          style: const TextStyle(
              color: kBorder_Color,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}