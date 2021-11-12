import 'package:challange1/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rank.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Integration

  int currentTab = 0;
  final List<Widget> screens = [
    Game(),
    Rank()
  ];

  // Active Tab
  Widget currentScreen = Game();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: 
      Container(
        color: Colors.yellow[600],
          // decoration: BoxDecoration(
          // color: Colors.yellow[600],
         
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(25.0),
          //     topRight: Radius.circular(25.0)
          //   ) 
          // ),
          height: 80,
          child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = Game();
                      currentTab = 0;
                    },);
                  },
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    SvgPicture.asset("assets/icons/gaming.svg", height: 23, width: 23, color: Colors.blueGrey,),
                     Icon(Icons.remove, color: currentTab == 0 ? Colors.white : Colors.blueGrey,)
                  ],),
                ),
              ),
              FloatingActionButton(
              
                child: Icon(Icons.add, color: Colors.blueGrey,),
                backgroundColor: Colors.white,
                onPressed: (){},
              ),
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = Rank();
                      currentTab = 1;
                    },);
                  },
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    Icon(Icons.equalizer, color: Colors.blueGrey,),
                    Icon(Icons.remove, color: currentTab == 1 ? Colors.white : Colors.blueGrey,)
                  ],),
                ),
              ),
          ],),
        ),
    );
  }
}