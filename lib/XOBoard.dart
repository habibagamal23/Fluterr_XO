import 'package:flutter/material.dart';

import 'BoardButton.dart';

class XoBoardwidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return XOBoardState();
  }

}

class XOBoardState extends State<XoBoardwidget>{
  int PlyerCount =0;
  List <String> BoardStatus = ['','','','','','', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Expanded(child: Column(

          children:[Text(" Welcome in Game XO "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Text("Plyer 1 Score : $XPlyer "),
                Text("Plyer 2 Score : $Oplyer "),
              ],
            )

          ]
        )),
         Expanded(child:
         Row(
           crossAxisAlignment:  CrossAxisAlignment.stretch,
           mainAxisAlignment:  MainAxisAlignment.center,
         children: [
        BoardButton(BoardStatus[0],0,OnClickPlyer),
        BoardButton(BoardStatus[1],1,OnClickPlyer),
        BoardButton(BoardStatus[2],2,OnClickPlyer),
      ],)
         ),
        Expanded(child:
        Row(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            BoardButton(BoardStatus[3],3,OnClickPlyer),
            BoardButton(BoardStatus[4],4,OnClickPlyer),
            BoardButton(BoardStatus[5],5,OnClickPlyer),
          ],)
        ),
        Expanded(child:
        Row(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            BoardButton(BoardStatus[6],6,OnClickPlyer),
            BoardButton(BoardStatus[7],7,OnClickPlyer),
            BoardButton(BoardStatus[8],8,OnClickPlyer),
          ],)
        ),
      ],
    );

  }
void OnClickPlyer (int postition ) {
  if (BoardStatus[postition].isNotEmpty)
    return;
  setState(() {
    if (PlyerCount % 2 == 0) {
      BoardStatus[postition] = 'X';
    } else {
      BoardStatus[postition] = 'O';
    }
    PlyerCount++;
    ChickWinner('X');
    ChickWinner('O');
    if(PlyerCount==9)
      restart();
  });
}

  void ChickWinner(String plyer) {
    if (BoardStatus[0] == plyer &&
        BoardStatus[1] == plyer &&
        BoardStatus[2] == plyer){
      WonPlayer(plyer);
      return;

  }
  else  if (BoardStatus[3] == plyer &&
        BoardStatus[4] == plyer &&
        BoardStatus[5] == plyer){
      WonPlayer(plyer);
      return;

    }
    else if (BoardStatus[6] == plyer &&
        BoardStatus[7] == plyer &&
        BoardStatus[8] == plyer){
      WonPlayer(plyer);
      return;

    }
}
int  XPlyer=0;
  int Oplyer=0;
 void WonPlayer(String Plyer){
restart();
if(Plyer=='X')
  XPlyer+=3;
else
  Oplyer+=3;
 }

 void restart(){
setState(() {

  PlyerCount=0;
  BoardStatus = ['','','','','','', '', '', ''];

});
 }
}