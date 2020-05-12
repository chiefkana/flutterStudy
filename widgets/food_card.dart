import 'package:flutter/material.dart';

void FoodCard() {
  return Padding(
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
}
