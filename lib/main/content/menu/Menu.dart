import 'package:flutter/material.dart';
import './molecules/CategoryCard.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: <Widget>[
        CategoryCard(
          title: "TaBaTa",
          icon: Icon(Icons.timer, size: 70),
          onClick: () {
            print("11111111");
          },
        ),
        CategoryCard(
          title: "WOD",
          icon: Icon(Icons.directions_run, size: 70),
          onClick: () {
            print("22222222");
          },
        ),
        CategoryCard(
          title: "History",
          icon: Icon(Icons.calendar_today, size: 70),
          onClick: () {
            print("33333333");
          },
        ),
        CategoryCard(
          title: "Community",
          icon: Icon(Icons.timer, size: 70),
          onClick: () {
            print("44444444");
          },
        ),
      ],
    ));
  }
}
