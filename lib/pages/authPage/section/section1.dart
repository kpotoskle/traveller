import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveller/constant.dart';
import 'package:traveller/pages/homePage/homePage.dart';

class loginSection1 extends StatelessWidget {
  const loginSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/niagara3.jpg"),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text8,
                    style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.bold,
                      color: secondColor,
                      fontSize: 40,
                    )),
                Text(text9,
                    style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.w400,
                      color: secondColor,
                      fontSize: 15,
                    )),
                SizedBox(height: 20,),
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20,bottom: 20),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => homePage(),));
                            }, child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(text10,
                                    style: GoogleFonts.albertSans(
                                      fontWeight: FontWeight.w400,
                                      color: thirdColor,
                                      fontSize: 15,
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: thirdColor,
                                )
                              ],

                            ),style: ElevatedButton.styleFrom(
                              elevation: 1,
                              backgroundColor: primaryColor,

                            ),)
                          ],
                        ),
                      ),

                      Text(text11,style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w400,
                        color: primaryColor,
                        fontSize: 15,)),
                      SizedBox(height: 10,),
                      Divider(
                        color: primaryColor,
                        thickness: 1,
                      ),
                      SizedBox(height: 10,),
                      Text(text12),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/apple.png"),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/facebook.png"),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/google.png"),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
