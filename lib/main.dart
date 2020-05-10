import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      fontWeight: FontWeight.w500,
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
                  heightFactor: 0.8,
                  child: Image.asset(
                    "assets/images/bg.jpg",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    HeaderDetails,
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black38,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
