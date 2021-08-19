import 'package:flutter/material.dart';
import './Counter.dart';

class TestApp extends StatelessWidget {
  TestApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pink Counter App"),
      ),
      body: Container(
        height: 1000,
        width: 500,
        decoration: BoxDecoration(color: Colors.white),
        // margin: EdgeInsets.symmetric(horizontal: 25, vertical: 300),
        // margin: EdgeInsets.only(top: 20, left: 150, right: 25, bottom: 50),
        child: MyCounter(),
      ),
    );
  }
}
