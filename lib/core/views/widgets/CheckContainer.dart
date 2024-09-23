import 'package:flutter/material.dart';

class CheckContainer extends StatelessWidget {
  CheckContainer({super.key,required this.child});

  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,width: 133,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
          border: Border.all(color:Colors.lightBlue,width: 3)),
      child:child ,
    );
  }
}
