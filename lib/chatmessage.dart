import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String sender;

  const ChatMessage({super.key, required this.text, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(child: Text(sender[0],style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
          ),),backgroundColor: Theme.of(context).colorScheme.primary,),
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sender, style: Theme.of(context).textTheme.titleMedium),
            Container(
              margin: EdgeInsets.only(top : 5.0),
              child: Text(text),
            )
          ],
        ))
      ],
    );
  }
}
