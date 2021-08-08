import 'package:flutter/material.dart';
import './molecules/BottomNavigationButton.dart';
import 'package:together_tabata/const/ColorList.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavigationButton(
            buttonNm: "TABATA",
            icon: Icon(Icons.timer, size: 30),
            onClick: () {
              print('navi TABATA');
            },
          ),
          BottomNavigationButton(
            buttonNm: "WOD",
            icon: Icon(
              Icons.directions_run,
              size: 30,
            ),
            onClick: () {
              print('navi WOD');
            },
          ),
          BottomNavigationButton(
            buttonNm: "MAIN",
            icon: Icon(
              Icons.apps_rounded,
              size: 30,
              color: kActiveIconColor,
            ),
            onClick: () {
              print('navi MAIN');
            },
            isActive: true,
          ),
          BottomNavigationButton(
            buttonNm: "HISTORY",
            icon: Icon(Icons.calendar_today, size: 30),
            onClick: () {
              print('navi HISTORY');
            },
          ),
          BottomNavigationButton(
            buttonNm: "COMMUNITY",
            icon: Icon(Icons.timer, size: 30),
            onClick: () {
              print('navi COMMUNITY');
            },
          ),
        ],
      ),
    );
  }
}
