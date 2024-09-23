import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
   TextForm({super.key,
     this.hint,
     this.icon,
     this.lable,
     this.isPassword=false,
     this.controller,
     this.marginBottom=10.0, this.marginLeft=20.0 , this.marginRight=20.0 , this.marginTop=10.0,
     this.validatorInput});
   TextEditingController? controller;
String? hint;
 Widget? icon;
 Widget? lable;
 bool isPassword = false;
 FormFieldValidator <String?>? validatorInput;
 double marginLeft =10.0 , marginRight= 10.0, marginTop= 10.0, marginBottom=10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.deepOrangeAccent,
      width: 350,
      margin: EdgeInsets.only(left: marginLeft,right: marginRight,top: marginTop,bottom: marginBottom),
      child:  TextFormField(
        textAlign: TextAlign.right,
      validator: validatorInput,
      obscureText: isPassword,
      decoration: InputDecoration(
        label:lable ,
        hintText: hint,
        prefixIcon: icon,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color:Colors.blueAccent,width: 2 ),),
      ),),);
  }
}
