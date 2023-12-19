import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/updates.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/kim.png'), fit: BoxFit.fill),
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
                    'My Status',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
              Spacer(),
              Icon(
                Icons.more_vert,
                color: Colors.green,
              )
            ],
          ),
        ),
        Expanded(child: Updates())
      ],
    );
  }
}
