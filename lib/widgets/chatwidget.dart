import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/chatpage.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  final List profilepics = [
    'images/Pedreta.jpg',
    'images/adams_raze.jpg',
    'images/ciara_luis.jpg',
    'images/Jenn.jpg',
    'images/Jennifer.jpg',
    'images/kiara2.webp',
    'images/kim.png',
    'images/pic2.jpg',
    'images/pic4.jpg',
    'images/mauren.jpg',
    'images/princewill_dane.jpg',
  ];

  final List names = [
    'Mirabel Francis',
    'Kingsley Jackson',
    'Sonia Johnson',
    'Quincy Lionel',
    'Tatiana Judge',
    'Mercy Prince',
    'Jerad Wilson',
    'Bruno Santiago',
    'Mary Lonrezo',
    'Mauren Blaze',
    'Adams Raze',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profilepics[index]),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        names[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('This is the recent developer and you?'),
                    ],
                  ),
                  Spacer(),
                  index == 5 || index == 2 || index == 8 || index == 10
                      ? Container()
                      : Column(
                          children: [
                            Text('12:15',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              alignment: Alignment.center,
                              height: 20,
                              width: 20,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            )
                          ],
                        )
                ],
              ),
            ),
          );
        });
  }
}
