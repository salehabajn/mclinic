import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
   AppButton({super.key,required this.text, required this.event});
  String text;
  VoidCallback event ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,width: 150,
      child: ElevatedButton(onPressed: event, child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
      ),)
      ),
    );
  }
}
