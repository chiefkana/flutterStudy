import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            RichText(
              text: TextSpan(
                text: "🍕",
                style: TextStyle(
                  fontSize: 35,
                ),
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
                      fontWeight: FontWeight.w600,
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
                      height: 20,
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
