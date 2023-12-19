import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/settingspage.dart';
import 'package:whatsapp_ui/widgets/callwidget.dart';
import 'package:whatsapp_ui/widgets/camerawidget.dart';
import 'package:whatsapp_ui/widgets/chatwidget.dart';
import 'package:whatsapp_ui/widgets/statuswidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title: Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  }
                },
                elevation: 10,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(value: 1, child: Text('New group')),
                    PopupMenuItem(value: 2, child: Text('New broadcast')),
                    PopupMenuItem(value: 3, child: Text('Linked devices')),
                    PopupMenuItem(value: 4, child: Text('Starred messages ')),
                    PopupMenuItem(value: 5, child: Text('Settings')),
                  ];
                })
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.teal,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  indicatorColor: Colors.white,
                  tabs: [
                    //Tab1
                    Tab(
                      icon: Icon(Icons.camera_alt_rounded),
                    ),
                    //Tab2
                    Tab(
                      child: Row(
                        children: [
                          Text(
                            'CHATS',
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text(
                              '10',
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      //Tab3
                      child: Tab(
                        child: Text('STATUS'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      //Tab4
                      child: Tab(
                        child: Text('CALLS'),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                //Tab1 CameraWidget
                CameraWidget(),
                //Tab2 ChatWidget
                ChatWidget(),
                //Tab3 ChatWidget
                StatusWidget(),
                //Tab 4
                CallWidget()
              ]),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
