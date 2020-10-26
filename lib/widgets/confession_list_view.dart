import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feministconfessions/themes/yayoi_kusama_my_heart.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class ConfessionListView extends StatelessWidget {
  final String text;
  final String author;
  final String episodeNumber;
  final random = Random();

  ConfessionListView.fromMap(Map<String, dynamic> map)
    : text = map['text'],
      author = map['author'],
      episodeNumber = map['episodeNumber'];

  ConfessionListView.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.bubble_chart,
        color: AllColours[random.nextInt(AllColours.length)],
        size: 40,
      ),
      title: Text(
        this.text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      trailing: Text(this.episodeNumber.toString()),
    );
  }
}
