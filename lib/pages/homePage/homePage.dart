import 'package:flutter/material.dart';
import 'package:traveller/constant.dart';
import 'package:traveller/pages/homePage/section/section1.dart';
import 'package:traveller/pages/homePage/section/section2.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: thirdColor,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            homeSection1(),
            homeSection2()
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.travel_explore_rounded,),label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.group),label: "Community"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),

      ],)
    );
  }
}
