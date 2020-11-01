import 'package:feministconfessions/screens/confessions_screen.dart';
import 'package:flutter/material.dart';

class NewConfessionScreen extends StatelessWidget {
  static const String id = "new_confession_screen";
  String confession;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    child: Text(
                      "Cancel",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).backgroundColor,
                      side: BorderSide(color: Theme.of(context).accentColor),
                    ),
                  ),
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "Submit",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    onPressed: () => submitConfession(context, confession),
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      side: BorderSide(color: Theme.of(context).accentColor),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "I'm a feminist but...",
              style: Theme.of(context).textTheme.headline2,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  expands: true,
                  maxLines: null,
                  autofocus: true,
                  style: Theme.of(context).textTheme.bodyText1,
                  onChanged: (value) => confession = value,
                  // onSubmitted or not?
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: send text from text field to firebase
void submitConfession(context, confession) {
  if(confession != null) {
    print(confession);
    Navigator.pop(context);
  }
}
