import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_insta/flutter_insta.dart';

import 'package:flutter/cupertino.dart';
import 'package:insanalyse/models/account_details.dart';
import 'package:insanalyse/widgets/custom_circle_avatar.dart';
import 'package:insanalyse/widgets/new_stat.dart';
import 'package:insanalyse/widgets/recap_stats.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // FlutterInsta flutterInsta = FlutterInsta();
  final AccountDetails accountDetails = AccountDetails();
  String username = '',
      followers = '',
      following = '',
      bio = '',
      website = '',
      profileimage = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDetailsOfAccount('fb_visuals');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Text(
                '@fb_visuals',
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15.0),
              const CustomCircleAvatar('assets/images/me.jpg'),
              const SizedBox(height: 30.0),
              const RecapStats('127', '211', '97'),
              Expanded(
                child: CustomScrollView(
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          NewStat('12', 'New Followers'),
                          NewStat('3', 'Followers lost'),
                          NewStat('12', "Followers I don't follow back"),
                          NewStat('12', 'Followers not following me back'),
                          NewStat('5', 'New story viewers'),
                          NewStat('0', 'User blocking me'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getDetailsOfAccount(String username) async {
    // await flutterInsta.getProfileData(username);
    setState(() {
      // this.username = flutterInsta.username.toString(); //username
      // followers = flutterInsta.followers.toString(); //number of followers
      // following = flutterInsta.following.toString(); // number of following
      // website = flutterInsta.website.toString(); // bio link
      // bio = flutterInsta.bio.toString(); // Bio
      // profileimage = flutterInsta.imgurl.toString(); // Profile picture URL
      // print(followers);
    });
  }
}
