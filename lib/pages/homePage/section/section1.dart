import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveller/constant.dart';

class homeSection1 extends StatelessWidget {
  const homeSection1({super.key});

  final double imageCardHeight = 350;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/profile.jpg"),
                radius: 25,
                backgroundColor: primaryColor,
              ),
              Text(text,
                  style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.bold, fontSize: 25)),
              Card(
                elevation: 0,
                shape: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                height: imageCardHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/niagara2.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // Stretch les éléments verticalement
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            text1,
                            style: GoogleFonts.albertSans(color: lastColor),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                             text2,
                              style: GoogleFonts.albertSans(color: thirdColor),
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
                    SizedBox(
                      height: imageCardHeight * 0.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          text3,
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            color: thirdColor,
                            fontSize: 30,
                          ),
                        ),
                        Text(text4
                         , style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            color: thirdColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
