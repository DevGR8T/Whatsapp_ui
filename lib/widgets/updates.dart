import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  Updates({super.key});

  final List<String> activity = ['Recent Updates', 'Viewed Updates'];

  final List<String> recentnames = ['Alexandra', 'Jonathan'];

  final List<String> recentnames2 = ['Richard', 'Smithy'];

  final List statusphotos = [
    'images/Jenn.jpg',
    'images/ciara_luis.jpg',
  ];

  final List statusphotos2 = [
    'images/adams_raze.jpg',
    'images/mario.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activity[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(statusphotos2[index]),
                            fit: BoxFit.fill),
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.5,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentnames[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Today 12:30am',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(statusphotos[index]),
                            fit: BoxFit.fill),
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 2.5,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentnames2[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Today 12:30am',
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
