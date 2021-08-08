import 'package:flutter/material.dart';
import 'package:together_tabata/const/ColorList.dart';

class BottomNavigationButton extends StatelessWidget {
  final String buttonNm;
  final Icon icon;
  final Function onClick;
  final bool isActive;

  const BottomNavigationButton({
    Key? key,
    required this.buttonNm,
    required this.icon,
    required this.onClick,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          icon,
          // Icon(Icons.timer, size: 30),
          Text(buttonNm,
              textAlign: TextAlign.center,
              style: TextStyle(color: isActive ? kActiveIconColor : kTextColor))
        ],
      ),
    );
  }
}
