import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feministconfessions/screens/new_confession_screen.dart';
import 'package:feministconfessions/themes/yayoi_kusama_my_heart.dart';
import 'package:feministconfessions/widgets/confession_list_view.dart';
import 'package:flutter/material.dart';

class ConfessionsScreen extends StatelessWidget {
  static const String id = "confessions_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "feminist confessions",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton.icon(
              icon: Icon(Icons.create, color: Theme.of(context).accentColor),
              label: Text(
                "I'm a feminist but...",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.left,
              ),
              onPressed: () {
                Navigator.pushNamed(context, NewConfessionScreen.id);
              },
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).backgroundColor,
                side: BorderSide(
                  color: Theme.of(context).accentColor
                ),
              ),
            ),
          ),
          _buildBody(context),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection("temp_setup").snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      });
}

Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
  return ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
  return ConfessionListView.fromSnapshot(snapshot);
}
