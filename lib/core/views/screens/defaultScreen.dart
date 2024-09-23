
import 'package:clinic/core/views/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Page Not Found"),
      body: Center(child: Text("Not found 404"),),
    );
  }
}
