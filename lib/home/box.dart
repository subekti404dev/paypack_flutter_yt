import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffe6e6ea),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: CircleAvatar(
                minRadius: 50,
                maxRadius: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 15),
              child: Text(
                'Courier',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 10),
              child: Text(
                '50k+ courier',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff727496),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
