import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Theme/const.dart';

Row DetailRow(var detailHeading, var detailData, String my_image) {
  return Row(
    children: [
      detailHeading != ""
          ? Text(
              detailHeading,
              style: const TextStyle(
                  color: kBorder_Color,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            )
          : SvgPicture.asset(my_image),
      const SizedBox(
        width: 15,
      ),
      Text(
        detailData,
        style: const TextStyle(
          color: kdetailTextColor,
          fontSize: 17,
        ),
      ),
    ],
  );
}
