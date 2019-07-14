import 'package:flutter/material.dart';
import 'package:flutter_project/CodeTree/Home/AppHomeScreen.dart';
import 'package:flutter_project/CodeTree/Mine/AppMineScreen.dart';

class BottomTabbarWidget extends StatefulWidget{
  _BottomTabbarWidgetState createState() => _BottomTabbarWidgetState();
}

class _BottomTabbarWidgetState extends State<BottomTabbarWidget>{
  List<Widget> arrTabbarItems = [];
  int _currIndex = 0;

  @override
  void initState() {
    arrTabbarItems
      ..add(AppHomeScreen())
      ..add(AppMineScreen());
    super.initState();
  }

  final _bottomNavigationColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: arrTabbarItems[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _bottomNavigationColor,),
              title: Text("Home", style: TextStyle(color: _bottomNavigationColor),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email, color: _bottomNavigationColor,),
              title: Text("Mine", style: TextStyle(color: _bottomNavigationColor),),
            ),
          ],
        currentIndex: _currIndex,
        onTap: (index){
            setState(() {
              _currIndex = index;
            });
        },
      ),
    );
  }
}