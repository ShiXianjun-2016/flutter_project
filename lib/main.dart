import 'package:flutter/material.dart';
import 'package:flutter_project/CodeTree/Tabbar/BottomTabbarWidget.dart';

void main() => runApp(LearnProjectApp());

class LearnProjectApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "小实例",
      home: BottomTabbarWidget(),
    );
  }
}