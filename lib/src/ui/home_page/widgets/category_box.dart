import 'package:flutter/material.dart';
import 'package:go_restaurant_ui/src/ui/const_ui/const_ui.dart';

class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String title;
  CategoryBox({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only( right: 10),
      decoration: BoxDecoration(
          color: GlobalConstUI.greyColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 60,
            color: GlobalConstUI.primaryColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title ?? "",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
