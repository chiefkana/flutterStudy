import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Rect myRect = const Offset(1.0, 2.0) & const Size(3.0, 4.0);
  @override
  Widget build(BuildContext context) {
    var FoodCard = Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ), // Yellow
        height: 200,
        width: 130,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              heightFactor: 0.9,
              child: SvgPicture.asset(
                "assets/icons/040-pizza-slice.svg",
                height: 64.0,
                width: 64.0,
              ),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                text: "Pizza",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Icon(
              Icons.code,
              size: 30,
              color: Colors.black54,
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );

    var HeaderDetails = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/anastasiya.jpg'),
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.dehaze,
                size: 30,
              ),
              color: Colors.black54,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: "Montserrat"),
                children: <TextSpan>[
                  TextSpan(
                    text: "Food\n",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.black54,
                    ),
                  ),
                  TextSpan(
                    text: "Delivery",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      title: "Nonsense",
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 0.85,
                  child: Image.asset(
                    "assets/images/bg.jpg",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      HeaderDetails,
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Icon(
                              Icons.search,
                              size: 35,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Search...',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: "Categories",
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontFamily: "Montserrat",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            FoodCard,
                            FoodCard,
                            FoodCard,
                            FoodCard,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: "Popular",
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontFamily: "Montserrat",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(
                                          1, 1), // changes position of shadow
                                    ),
                                  ],
                                ), // Yellow
                                height: 160,
                                width: 420,
                                alignment: Alignment.center,
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        SizedBox(height: 15),
                                        Padding(
                                          padding: EdgeInsets.only(right: 60),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 16,
                                              ),
                                              SizedBox(width: 7),
                                              RichText(
                                                text: TextSpan(
                                                    text: "top of the week",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "Montserrat",
                                                        color: Colors.black87)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontFamily: "Montserrat"),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "Pizza Primavera\n",
                                                      style: TextStyle(
                                                          fontSize: 26,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    TextSpan(
                                                      text: "Weight: 510g",
                                                      style: TextStyle(
                                                        color: Colors.grey[700],
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 145),
                                          child: Row(
                                            children: <Widget>[
                                              FlatButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30),
                                                          topRight:
                                                              Radius.circular(
                                                                  30)),
                                                ),
                                                color: Colors.amberAccent[200],
                                                textColor: Colors.black,
                                                onPressed: () {},
                                                child: Text(
                                                  "Add".toUpperCase(),
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(80),
                                        bottomLeft: Radius.circular(80),
                                      ),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/pizzaImage.jpg",
                                          scale: 0.1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
