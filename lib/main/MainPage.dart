import 'package:flutter/material.dart';
// import 'package:together_tabata/const/ColorList.dart';
import './content/welcome/Welcome.dart';
import './content/category/Category.dart';
import './content/BottomNavigation/BottomNavigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigation(),
        body: Stack(
          children: <Widget>[
            Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                  color: Color(0xFFF5CEB8),
                  // color: Colors.black54,
                )),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[Welcome(), Category()],
                ),
              ),
            )
          ],
        ));
  }
}
