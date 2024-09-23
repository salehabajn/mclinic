import 'package:flutter/material.dart';
class MedContainer extends StatelessWidget {
   MedContainer({super.key, this.margin});
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(60),
      topLeft: Radius.circular(60),
      ),
        color: Colors.white
      ),
    );
  }
}
