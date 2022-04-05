import 'package:flutter/material.dart';
import '../Theme/const.dart';

Widget buildTextField({
  hintText,
  TextInputType? inputType,
  controller,
  onChanged,
}
    //String hintText,
    //TextInputType inputType,
    ) {

  return Padding(
    padding: const EdgeInsets.fromLTRB(17, 2, 17, 10),
    child: TextFormField(
      onChanged: onChanged,
      controller: controller,
      cursorColor: kprimaryColor,
      keyboardType: inputType,
      cursorHeight: 20,
      decoration: InputDecoration(
          fillColor: kTextFieldBackground,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.4,
              color: kTextFiledBorder,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.7,
              color: kBorder_Color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabled: true,
          contentPadding: const EdgeInsets.all(18),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: kTextColor, fontSize: 15, letterSpacing: 1.1)),
    ),
  );
}
