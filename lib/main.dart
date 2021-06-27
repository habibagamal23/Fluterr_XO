import 'package:flutter/material.dart';

import 'XOBoard.dart';

void main() {
  runApp(XORoute());
}

class XORoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: "XOGames",
   home: Scaffold(
     appBar: AppBar(title: Text("Xo Game"),),
     body:XoBoardwidget() ,
   ),
 );
  }

}