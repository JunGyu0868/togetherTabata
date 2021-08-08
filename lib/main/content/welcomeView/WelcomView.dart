import 'package:flutter/material.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              print("menuButton");
            },
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Icon(Icons.dehaze_rounded),
            ),
          ),
        ),
        Text(
          "Let's\nTabata",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w900),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 65),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                icon: Icon(Icons.search),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
