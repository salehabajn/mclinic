import 'package:clinic/core/views/widgets/AppDrawer.dart';
import 'package:clinic/core/views/widgets/CustomAppBar.dart';
import 'package:clinic/core/views/widgets/ServicesList.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "title"),
      drawer: AppDrawer(),
      body: ServicesList(),
    );
  }
}
