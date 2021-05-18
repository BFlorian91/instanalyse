import 'package:flutter/material.dart';

class RecapStats extends StatefulWidget {
  final String numberPost;
  final String numberOfFollowers;
  final String numberOfFollowing;

  const RecapStats(
      this.numberPost, this.numberOfFollowers, this.numberOfFollowing);
  @override
  _RecapStatsState createState() => _RecapStatsState();
}

class _RecapStatsState extends State<RecapStats> {
  @override
  Widget build(BuildContext context) {
    final double widthSplit = MediaQuery.of(context).size.width / 3;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: widthSplit,
            child: Column(
              children: <Widget>[
                Text(
                  widget.numberPost,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  'Posts',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            width: widthSplit,
            child: Column(
              children: <Widget>[
                Text(
                  widget.numberOfFollowers,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  'Followers',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            width: widthSplit,
            child: Column(
              children: <Widget>[
                Text(
                  widget.numberOfFollowing,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  'Following',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
