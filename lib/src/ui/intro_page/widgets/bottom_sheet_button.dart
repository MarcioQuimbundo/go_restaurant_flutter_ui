import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_restaurant_ui/src/ui/const_ui/const_ui.dart';
import 'package:go_restaurant_ui/src/ui/home_page/home_page.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        decoration: BoxDecoration(
          color: GlobalConstUI.secondColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30),
              alignment: Alignment.center,
              child: Text(
                "Entrar no Restaurant",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: GlobalConstUI.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  color: Colors.white.withOpacity(0.2)),
              child: Icon(
                FontAwesomeIcons.signInAlt,
                size: 20,
                color: GlobalConstUI.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
