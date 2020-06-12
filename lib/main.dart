import 'package:flutter/material.dart';
import 'package:go_restaurant_ui/src/ui/intro_page/intro_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Go Restaurant",
    theme: ThemeData(
        fontFamily: "Biko",
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent)),
    debugShowCheckedModeBanner: false,
    home: IntroPage(),
  ));
}
