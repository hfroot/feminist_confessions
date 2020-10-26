import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feministconfessions/widgets/confession_list_view.dart';
import 'package:flutter/material.dart';

class ConfessionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "feminist confessions",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gavel),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              // TODO: extract this widget to it's own file
              // TODO: https://flutter.dev/docs/cookbook/forms/retrieve-input
              return Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "i'm a feminist but...",
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              );
            },
          );
        },
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
    padding: const EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
  return ConfessionListView.fromSnapshot(snapshot);
}
