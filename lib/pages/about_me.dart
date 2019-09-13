import 'package:flutter/material.dart';
import 'package:get_in_touch/customWidget/background.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi, I\'m Abdulrahman',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          SizedBox(height: 30),
          Text(
            'I\'m Mobile Application developer. I enjoy solving hard problems.',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
                fontSize: 25,
                letterSpacing: 1.5),
          ),
        ],
      ),
    ));
  }
}
