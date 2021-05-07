import 'package:flutter/material.dart';

final lightGreyRed = Colors.red;

final _roundedBorderFocused = OutlineInputBorder(
  borderSide: BorderSide(color: lightGreyRed),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
final _roundedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: lightGreyRed),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);

InputDecoration decorationInputSmall(text) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 12.0,
    ),
    filled: true,
    fillColor: Colors.white,
    disabledBorder: _roundedBorder,
    enabledBorder: _roundedBorder,
    errorStyle: TextStyle(fontSize: 14.0, color: Colors.white),
    errorBorder: _roundedBorder,
    border: _roundedBorder,
    focusedBorder: _roundedBorderFocused,
    hintText: text,
    hintStyle: TextStyle(color: lightGreyRed),
  );
}

