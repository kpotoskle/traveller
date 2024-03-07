import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveller/constant.dart';

class homeSection2 extends StatelessWidget {
  const homeSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: lastColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        gradient: LinearGradient(
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.blue.withOpacity(0.1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top : 20, left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text5,
                    style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w500,
                        color: secondColor,
                        fontSize: 30)),
                Row(
                  children: [
                    Text(
                      text6,
                      style: GoogleFonts.albertSans(
                          color: secondColor, fontSize: 17),
                    ),
                    Card(
                      elevation: 0,
                      shape: CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8,left: 10),
                  child: Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/niagara1.jpg"),
                            ),
                          ),
                        ),
                        Text(text7)
                      ],
                    ),
                  ),
                )
                ;
              },),
            )
          ],
        ),
      ),
    ));
  }
}
