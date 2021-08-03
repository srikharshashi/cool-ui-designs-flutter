import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(
          FontAwesomeIcons.dollarSign,
          color: Colors.green,
          size: 25,
        ),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              FontAwesomeIcons.bars,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                  alignment: Alignment(0, -0.6),
                  height: 120,
                  color: Colors.white,
                  child: Text(
                    "Get Coaching",
                    style: GoogleFonts.montserrat(fontSize: 20),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(25, 80, 25, 0),
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                      )
                    ]),
                padding: EdgeInsets.all(20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: Text(
                                "You Have",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                "206" + "💕",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color(0xFFe9f8ee),
                                // border: Border.all(color: Color(0xFF000000)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text("Buy More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.green[600],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.green[600],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    card("Alyx", true,
                        "https://upload.wikimedia.org/wikipedia/en/4/41/Penny_bigbangtheory.jpg"),
                    SizedBox(
                      height: 30,
                    ),
                    card("James", true,
                        "https://i.pinimg.com/originals/19/3b/dc/193bdcdbc3bcb2cb1eabfd23244ac3dc.png")
                  ],
                ),
                Column(
                  children: [
                    card("Fransico", true,
                        "https://wallpapercave.com/wp/wp3766641.jpg"),
                    SizedBox(
                      height: 30,
                    ),
                    card("Megan", true,
                        "https://i.pinimg.com/originals/f1/5f/f7/f15ff71dd865ca1ba641fba71b1a478c.jpg"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget card(String name, bool avialable, String link) {
  return Container(
    alignment: Alignment.center,
    height: 270,
    width: 170,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          )
        ]),
    child: Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 220,
          child: Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color(0xFF2CC468),
            ),
            child: Center(child: Text("press me")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(link),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Available for",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text(
                  "5 hours",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
