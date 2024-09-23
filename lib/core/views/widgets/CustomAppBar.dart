
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key,required this.title,this.hieght});
  final String title;
  double? hieght;
  //final Color backgroundColor;
  //final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25) )),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight??hieght!);
}
