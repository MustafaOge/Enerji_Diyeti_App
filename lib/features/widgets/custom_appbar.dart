import 'package:enerji_diyeti_5/core/constants/theme.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    required Widget title,
    elevation: double,
    // ignore: non_constant_identifier_names
    Color: Color,
  }) : super(
          iconTheme: IconThemeData(color: kSecondaryColor),
          centerTitle: true,
          title: title,
          elevation: 0.0,
          backgroundColor: Color,
        );
}
