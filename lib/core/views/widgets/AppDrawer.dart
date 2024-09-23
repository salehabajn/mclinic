import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({super.key});
 TextStyle textStyle = TextStyle(color: Colors.white,fontSize:18,);
   TextStyle txtStyle = TextStyle(color: Colors.blueAccent,fontSize:20,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            bottomLeft: Radius.circular(35)),
      ),
     // backgroundColor: Colors.white.withOpacity(0.10),
      child: ListView(
        children: [
        UserAccountsDrawerHeader(margin: EdgeInsets.all(0),
          accountName: Text("مزون احمد",style: textStyle,),
            accountEmail: Text("muzoon.ad@yaho.com",style: textStyle,),
          currentAccountPicture: CircleAvatar(),
        decoration: BoxDecoration(color: Colors.blueAccent),
        ),
          ListTile(trailing: Icon(Icons.bookmark_added_rounded,),title: Text("حجوزاتي",style: txtStyle,),
          onTap: (){},),
          ListTile(trailing: Icon(Icons.notification_add),title: Text("اشعاراتي",style:txtStyle,),
            onTap: (){},),
          ListTile(trailing: Icon(Icons.info_outline,),title: Text("حول العيادة",style: txtStyle,),
            onTap: (){},),
          ListTile(trailing: Icon(Icons.logout,),title: Text("تسجيل الخروج",style: txtStyle,),
            onTap: (){},)
      ],)
    );
  }
}
