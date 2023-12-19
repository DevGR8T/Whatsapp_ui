import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/settingswidget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/ciara_luis.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Programmer D',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hey there, I am using whatsapp',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 30),
            SettingsWidget(
              symbols: Icons.key,
              text: 'Account',
              text2: 'privacy, security, change number',
            ),
            SettingsWidget(
              symbols: Icons.message,
              text: 'Chats',
              text2: 'Theme, wallpapers, chat history',
            ),
            SettingsWidget(
              symbols: Icons.notifications,
              text: 'Notifications',
              text2: 'Message, group & call tones',
            ),
            SettingsWidget(
              symbols: Icons.circle_outlined,
              text: 'Storage and Data',
              text2: 'Network usage, auto-download',
            ),
            SettingsWidget(
              symbols: Icons.key,
              text: 'Help',
              text2: 'Help center, contact us, privacy policy',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.people_alt,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Invite a Friend',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Facebook',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            )
          ],
        ));
  }
}
