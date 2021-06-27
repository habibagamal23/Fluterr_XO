import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget{

  String text;
  int ButtonBostion;
  Function OnClick;
  BoardButton(this.text,this.ButtonBostion,this.OnClick);
  @override
  Widget build(BuildContext context) {
  return  
    
    Expanded(child: Container(
      margin:  EdgeInsets.all(2),
      child :
  
   ElevatedButton(onPressed: ()=>{
     OnClick(ButtonBostion)

   }, child:  Text(text)

  ),
    ));

  }

}