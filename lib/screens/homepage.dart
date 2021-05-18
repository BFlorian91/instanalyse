import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:insanalyse/widgets/custom_circle_avatar.dart';
import 'package:insanalyse/widgets/recap_stats.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const CustomCircleAvatar('assets/images/me.jpg'),
              const SizedBox(height: 30.0,),
              const RecapStats('127', '211', '97'),
            ],
          ),
        ),
      ),
    );
  }
}
