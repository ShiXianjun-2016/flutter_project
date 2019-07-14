import 'package:flutter/material.dart';

class AppMineScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "项目代码",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mine"),
        ),
        body:Center(
          child: Text("Mine"),
        )
      ),
    );
  }
}