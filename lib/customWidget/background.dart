import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget child;
  MyScaffold({@required this.child});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 300),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFDF5244), Color(0xFFA41B39)],
                        ),
                      ),
                      child: this.child),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
