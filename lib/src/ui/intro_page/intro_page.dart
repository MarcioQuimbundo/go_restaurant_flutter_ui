import 'package:flutter/material.dart';
import 'package:go_restaurant_ui/src/ui/const_ui/const_ui.dart';
import 'package:go_restaurant_ui/src/ui/intro_page/widgets/bottom_sheet_button.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeDevice = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalConstUI.primaryColor,
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Positioned(
              left: -200,
              top: -130,
              child: Opacity(
                  opacity: .1, child: Image.asset("assets/icones/soup.png"))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: sizeDevice.height / 6,
                ),
                Image.asset(
                  "assets/icones/soup.png",
                  width: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "GoRestaurant",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Comida Italiana, sim.",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(
                  height: sizeDevice.height / 9,
                ),
                Text(
                  "Uma",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "verdadeira",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "experiência",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Italiana.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      )),
      bottomSheet: BottomSheetButton(),
    );
  }
}
