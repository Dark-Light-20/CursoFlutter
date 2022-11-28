import 'package:flutter/material.dart';

abstract class StyleDecorationsInput {
  static InputDecoration loginInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 2,
        ),
      ),
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Colors.green,
            )
          : null,
    );
  }
}
