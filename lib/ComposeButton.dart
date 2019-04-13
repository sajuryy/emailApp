import 'package:emailapp/Message.dart';
import 'package:emailapp/MessageCompose.dart';
import 'package:flutter/material.dart';

class ComposeButton extends StatelessWidget {
  final List<Message> messages;
  ComposeButton(this.messages);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () async {
        Message _message = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => MessageCompose(),
          ),
        );

        if (_message != null) {
          messages.add(_message);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Your message sent'),
              backgroundColor: Colors.blueGrey,
            ),
          );
        }
      },
    );
  }
}
