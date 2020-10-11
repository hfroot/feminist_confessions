import 'package:feministconfessions/widgets/confession_list_view.dart';
import 'package:flutter/material.dart';

class ConfessionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: fetch confessions from firebase
    List<ConfessionListView> confessions = [];
    for (var i = 0; i < 15; i++) {
      confessions.add(ConfessionListView("i'm a feminist but..."));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "feminist confessions",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView(
        children: confessions,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gavel),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              // TODO: extract this widget to it's own file
              // TODO: https://flutter.dev/docs/cookbook/forms/retrieve-input
              return Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
