import 'package:flutter/material.dart';

class Rank extends StatefulWidget {
  @override
  _RankState createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 28),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Column(
                  children: <Widget>[
                    Text('Belum ada juara',
                        style: new TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 25)),
                    Text('Ayo mainkan dan buat namamu',
                        style: new TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                    Text('tercatat dalam daftar rank.',
                        style: new TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                    Text('Coded by Mochamad Rizal.',
                        style: new TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
