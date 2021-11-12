import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        color: Colors.yellow[600],
        child: 
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.all(15),
          child: 
          Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
               Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Hey, Ya'suf Dany", style: new TextStyle(color: Colors.grey[800],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 25)),
                ),
                Image.asset(
                  "assets/images/user.png",
                  height: 40,
                  width: 40, 
                )
            ],),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(left: 15, top:10, ),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/card1.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: 
                        Text('Main     Sekarang', style: new TextStyle(color: Colors.grey[800],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 20)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, top:10, ),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/card2.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: 
                        Text('Main         Bareng', style: new TextStyle(color: Colors.grey[800],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 20)),
                  ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: 
              Container(
                padding: const EdgeInsets.only(left: 15, top:10, ),
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/card3.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: 
                Column(children: <Widget>[
                  Row(children: <Widget>[
                    Text('Level Editor', style: new TextStyle(color: Colors.grey[800],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 20)),
                  ],),
                   Row(children: <Widget>[
                    Text('Mainkan dan buat levelmu sendiri', style: new TextStyle(color: Colors.grey[600],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 15)),
                  ],),
                  Row(children: <Widget>[
                    Text('dan tantang teman-temanmu', style: new TextStyle(color: Colors.grey[600],fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 15)),
                  ],)
                ],),
              ),
            )
          ],),
        ),
      ),
    );
  }
}