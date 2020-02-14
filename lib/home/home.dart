import 'package:flutter/material.dart';
import 'package:paypak/home/box.dart';
import 'package:paypak/home/header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'My Service',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF262628)),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontSize: 18, color: Color(0xFFFF7750)),
                ),
                Icon(Icons.arrow_right, size: 30, color: Color(0xFFFF7750))
              ],
            ),
          )),
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Box(),
                  Box(),
                  Box(),
                  Box(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
