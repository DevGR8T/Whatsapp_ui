import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 293,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                ),
                Container(
                    height: 30,
                    width: 190,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message',
                          hintStyle: TextStyle(color: Colors.black38),
                          contentPadding: EdgeInsets.only(bottom: 15, left: 5)),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.attachment_outlined,
                    color: Colors.black38,
                  ),
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8),
          height: 45,
          width: 45,
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Icon(
            Icons.mic,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
