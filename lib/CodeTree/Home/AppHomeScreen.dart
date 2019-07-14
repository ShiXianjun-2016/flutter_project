import 'package:flutter/material.dart';

class AppHomeScreen extends StatelessWidget{

  final List<String> arrItems = ["TabBar"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "项目代码",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView.builder(
          itemCount: arrItems.length * 2,
          itemBuilder: (context, index){
            return _buildListViewRow(context, index, this.arrItems[index ~/ 2]);
          },
        ),
      ),
    );
  }

  Widget _buildListViewRow(BuildContext context, int i, String title){

    if (i.isOdd) return new Divider();
    return ListTile(
      title: Text(title),
      onTap: (){
        onTapListItem(context, i ~/ 2);
      },
    );
  }

  void onTapListItem(BuildContext context, int index) {
    switch (index)
    {
      case 0:{
//        Navigator.push(
//            context,
//            MaterialPageRoute(builder:(context) => BottomTabbarWidget())
//        );
      }
      break;
    }
  }
}