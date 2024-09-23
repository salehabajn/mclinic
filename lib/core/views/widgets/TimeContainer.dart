import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
   TimeContainer({super.key,this.margin,this.padding});
EdgeInsetsGeometry? margin;
EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10)??margin,
      padding: EdgeInsets.all(5),
      width: 150, height: 45,
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
          border: Border.all(color:Colors.blueAccent,width: 2)),
      child: Row(children: [ InkWell(
        child: Container(padding: EdgeInsets.all(5),
          child:Row(children: [
            Text("صباحاً"),
            Icon(Icons.sunny,color: Colors.amber,)
          ],) ,),
        onTap: (){},
      ),
        InkWell(
        child: Container(padding: EdgeInsets.all(5),
          child:Row(children: [
            Text("مساءً"),
            Icon(Icons.nightlight_outlined)
          ],) ,),
        onTap: (){
        },
      ),
      ],),
    );
  }
}
