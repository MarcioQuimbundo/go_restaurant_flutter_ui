import 'package:flutter/material.dart';
import 'package:go_restaurant_ui/src/ui/const_ui/const_ui.dart';

class DishTile extends StatelessWidget {
  const DishTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 10),
      child: Row(
        children: <Widget>[
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: GlobalConstUI.secondColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                width: double.infinity,
                padding: EdgeInsets.all(8),
                height: 110,
                child: Image.asset(
                  "assets/images/pizza.png",
                ),
              )),
          Flexible(
              flex: 2,
              child: Container(
                height: 110,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, top: 20, right: 10),
                decoration: BoxDecoration(
                  color: GlobalConstUI.greyColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ao molho",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Macarrão ao molho branco, fughi e cheiro verde das montanhas",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "R\$ 19,0",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}