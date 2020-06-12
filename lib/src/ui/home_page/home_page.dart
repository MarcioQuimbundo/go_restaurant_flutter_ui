import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_restaurant_ui/src/ui/const_ui/const_ui.dart';
import 'package:go_restaurant_ui/src/ui/home_page/widgets/bottom_appbar_item.dart';
import 'package:go_restaurant_ui/src/ui/home_page/widgets/category_box.dart';
import 'package:go_restaurant_ui/src/ui/home_page/widgets/dish_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 140,
                    color: GlobalConstUI.primaryColor,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icones/soup.png",
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "GoRestaurant",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Comida Italiana, sim.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: IconButton(
                              icon: Icon(FontAwesomeIcons.signOutAlt),iconSize: 20,
                              color: GlobalConstUI.secondColor,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Categorias",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 130,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              CategoryBox(
                                icon: FontAwesomeIcons.pizzaSlice,
                                title: "Pizzas",
                              ),
                              CategoryBox(
                                icon: FontAwesomeIcons.breadSlice,
                                title: "Bolos",
                              ),
                              CategoryBox(
                                icon: FontAwesomeIcons.bacon,
                                title: "Carnes",
                              ),
                              CategoryBox(
                                icon: FontAwesomeIcons.pizzaSlice,
                                title: "Pizzas",
                              ),
                              CategoryBox(
                                icon: FontAwesomeIcons.breadSlice,
                                title: "Bolos",
                              ),
                              CategoryBox(
                                icon: FontAwesomeIcons.bacon,
                                title: "Carnes",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Pratos",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(10, (i) => DishTile()))
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  child: Align(
                alignment: Alignment.center,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 110),
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          fillColor: GlobalConstUI.greyColor,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          focusColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          hintText: "Qual comida você procura?"),
                    )),
              )),
            ],
          ),
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 20.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomAppBarItem(
              active: true,
              icon: Icons.list,
              title: "Listagem",
            ),
            BottomAppBarItem(
              active: false,
              icon: Icons.shopping_basket,
              title: "Pedidos",
            ),
            BottomAppBarItem(
              active: false,
              icon: Icons.favorite_border,
              title: "Favoritos",
            ),
          ],
        ),
      ),
    );
  }
}
