import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chatbox.dart';
import 'package:whatsapp_ui/widgets/chatsample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        elevation: 2,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/Jenn.jpg'),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Programmer',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'online',
                  style: TextStyle(color: Colors.white60, fontSize: 14),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.videocam_rounded),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Icon(Icons.call),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/whatsback.jpg'), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.amberAccent[100],
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)]),
                child: Text(
                  textAlign: TextAlign.center,
                  'Messages and calls are end-to-end encrypted. No one outside of this chat can read or listen. Tap to learn more',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
            ],
          ),
        ),
      ),
      bottomSheet: ChatBox(),
    );
  }
}
