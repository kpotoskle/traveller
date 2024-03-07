import 'package:flutter/material.dart';
import 'package:traveller/pages/authPage/section/section1.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [loginSection1()],
        ),
      ),
    );
  }
}
