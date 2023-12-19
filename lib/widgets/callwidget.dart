import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  CallWidget({super.key});

  final List callpics = [
    'images/Pedreta.jpg',
    'images/mauren.jpg',
    'images/kiara2.webp',
    'images/adams_raze.jpg',
    'images/Jenn.jpg',
    'images/ciara_luis.jpg'
  ];

  final List callnames = [
    'Mirabel',
    'Mauren Walborn (7)',
    'Ciara Luis (3)',
    'Zuckerberg J',
    'Tatiana',
    'Kim Zoe'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(callpics[index]),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    callnames[index],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: index == 1 || index == 2 || index == 5
                            ? Colors.red
                            : Colors.black),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        index == 1 || index == 2 || index == 5
                            ? Icons.call_received
                            : Icons.call_made,
                        size: 15,
                        color: index == 1 || index == 2 || index == 5
                            ? Colors.red
                            : Colors.green,
                      ),
                      Text(
                        '(1) Today 12:39',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.call,
                size: 15,
                color: Colors.green,
              )
            ],
          ),
        );
      },
    );
  }
}
