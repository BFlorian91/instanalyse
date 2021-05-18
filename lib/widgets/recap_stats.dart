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
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(widget.numberPost),
              const Text('Posts'),
            ],
          ),
          Column(
            children: <Widget>[
              Text(widget.numberOfFollowers),
              const Text('Followers')
            ],
          ),
          Column(
            children: <Widget>[
              Text(widget.numberOfFollowing),
              const Text('Following')
            ],
          )
        ],
      ),
    );
  }
}
