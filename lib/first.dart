import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: size.height * 0.04),
        height: size.height * 0.6,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/p1.png',
                    height: size.height * 0.2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/p2.png',
                    height: size.height * 0.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/p3.png',
                    height: size.height * 0.2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/p4.png',
                    height: size.height * 0.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bottom() {
      return Container(
        height: size.height * 0.4,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size.height * 0.05),
              topRight: Radius.circular(size.height * 0.05),
            ),
            color: Colors.white),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: size.height * 0.04,
                vertical: size.height * 0.04,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Read the article you want instantly",
                          style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          "You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.",
                          style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.02,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.3,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff376AED),
                              ),
                              child: Image.asset(
                                'assets/arrow--right.png',
                                height: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffE9EDF9),
      body: Column(
        children: [
          header(),
          bottom(),
        ],
      ),
    );
  }
}
