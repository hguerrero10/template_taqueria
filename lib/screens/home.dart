import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_foodybite/screens/detalle1.dart';
import 'package:flutter_foodybite/screens/detalle2.dart';
import 'package:flutter_foodybite/screens/detalle3.dart';
import 'package:flutter_foodybite/screens/trending.dart';
import 'package:flutter_foodybite/util/categories.dart';
import 'package:flutter_foodybite/util/friends.dart';
import 'package:flutter_foodybite/util/restaurants.dart';
import 'package:flutter_foodybite/widgets/category_item.dart';
import 'package:flutter_foodybite/widgets/search_card.dart';
import 'package:flutter_foodybite/widgets/slide_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSearchBar(context),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            buildCategoryRow('Platillos en Tendencia', context),
            SizedBox(height: 10.0),
            buildRestaurantList(context),
            SizedBox(height: 10.0),
            buildCategoryRow('Productos', context),
            Column(
              children: <Widget>[
                _productos('assets/gringa.jpg', 'Gringas', 'Queso, Trompo, Piña', '\$ 40.00', ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) { return DetalleForm();}))),
                Divider(),
                _productos('assets/campechana.jpg', 'Campechanas', 'Carne de bisteck, Queso, Trompo', '\$ 50.00', ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) { return DetalleForm2();}))),
                Divider(),
                _productos('assets/tacos-al-pastor.jpg', 'Tacos al pastor', 'Trompo, Bisteck, Cebolla', '\$ 80.00', ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) { return DetalleForm3();}))),
              ],
            ),
            buildCategoryRow('Categorias', context),
            SizedBox(height: 10.0),
            buildCategoryList(context),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  buildCategoryRow(String category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$category",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        FlatButton(
          child: Text(
            "Ver Todos (5)",
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  buildSearchBar(BuildContext context) {
    return PreferredSize(
      child: Padding(
        padding: EdgeInsets.only(
          top: Platform.isAndroid ? 30.0 : 50.0,
          left: 10.0,
          right: 10.0,
        ),
        child: SearchCard(),
      ),
      preferredSize: Size(
        MediaQuery.of(context).size.width,
        60.0,
      ),
    );
  }

  buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories == null ? 0 : categories.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = categories[index];

          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants == null ? 0 : restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }

  _productos(String img, String titulo, String desc, String precio, onPress) {
    return Container(
      child: Row(
          children: <Widget>[
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0)
                )
              ),
              child: Image.asset(
                img,
                height: 130,
                width: 160,
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Column(
              children: <Widget>[
                Container(
                  width: 150,
                  child: Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  width: 150,
                  child: Text(
                    desc,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  width: 150,
                  child: Text(
                    precio,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // RGB(205, 92, 92)

                SizedBox(height: 10),
                Container(
                  width: 150,
                  child: OutlineButton(
                    child: Text("Agregar"),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color:  Color.fromRGBO(205, 92, 92, 1),
                    textColor:  Color.fromRGBO(205, 92, 92, 1),
                    borderSide: BorderSide(color:  Color.fromRGBO(205, 92, 92, 1)),
                    onPressed: onPress,
                  ),
                )
              ],
            )
          ],
        ),
      
    );
  }
}