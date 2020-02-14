import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 550,
      decoration: BoxDecoration(
          color: Color(0xFF4E37B2),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              'assets/bg.png',
              width: MediaQuery.of(context).size.width,
            )),
        SafeArea(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Paypack',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Powered by Taglos',
                            style: TextStyle(
                              color: Color(0x99FFFFFF),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Tracking Your Shipment',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please enter your tracking number.',
              style: TextStyle(
                color: Color(0x99FFFFFF),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.save,
                      color: Color(0xFFFF7750),
                    ),
                    hintText: 'Enter tracking number',
                    hintStyle: TextStyle(color: Color(0xff262628)),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0,
                            style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0,
                            style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        )),
      ]),
    );
  }
}
