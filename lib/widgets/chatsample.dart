import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive,
              nipHeight: 30, bubbleRadius: 10),
          child: Container(
            margin: EdgeInsets.only(right: 150, top: 15),
            height: 35,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            child: Text('Hi Mitch, Hope you are well?'),
          ),
        ),
        ClipPath(
          clipper: UpperNipMessageClipperTwo(
            MessageType.send,
            nipHeight: 30,
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 95, top: 15),
            height: 60,
            width: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.lightGreen[100],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
                'Hi Programmer Damian, I am fine and well thanks for asking and what about you, i hope you will be fine'),
          ),
        ),
      ],
    );
  }
}
