import 'package:flutter/material.dart';

final lightGreyRed = Colors.red;
final white = Colors.white;

final _roundedBorderFocused = OutlineInputBorder(
  borderSide: BorderSide(color: lightGreyRed),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
final _roundedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: lightGreyRed),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);

final _roundedBorderFocusedWhite = OutlineInputBorder(
  borderSide: BorderSide(color: white),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
final _roundedBorderWhite = OutlineInputBorder(
  borderSide: BorderSide(color: white),
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

InputDecoration decorationInputSearch(text) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 12.0,
    ),
    prefixIcon: Icon(Icons.search, color: Colors.white,),
    filled: true,
    fillColor: Colors.red,
    disabledBorder: _roundedBorderWhite,
    enabledBorder: _roundedBorderWhite,
    errorStyle: TextStyle(fontSize: 14.0, color: Colors.black),
    errorBorder: _roundedBorderWhite,
    border: _roundedBorderWhite,
    focusedBorder: _roundedBorderFocusedWhite,
    hintText: text,
    hintStyle: TextStyle(color: white),
  );
}