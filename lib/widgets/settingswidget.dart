import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget(
      {super.key,
      required this.symbols,
      required this.text,
      required this.text2});
  final IconData symbols;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, bottom: 25, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                symbols,
                color: Colors.grey,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
