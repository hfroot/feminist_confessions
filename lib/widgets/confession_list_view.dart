import 'package:feministconfessions/themes/yayoi_kusama_my_heart.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class ConfessionListView extends StatelessWidget {
  final String title;
  ConfessionListView(this.title);
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.bubble_chart,
        color: AllColours[random.nextInt(AllColours.length)],
        size: 40,
      ),
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
