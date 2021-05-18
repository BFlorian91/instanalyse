import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NewStat extends StatefulWidget {
  final String number;
  final String stat;

  const NewStat(this.number, this.stat);
  @override
  _NewStatState createState() => _NewStatState();
}

class _NewStatState extends State<NewStat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 2.0,
            offset: Offset(1.0, 1.0),
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: containerColor,
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              width: double.infinity,
              child: Text(
                widget.number,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              child: Text(
                widget.stat,
                style: const TextStyle(color: white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
