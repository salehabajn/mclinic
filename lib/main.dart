import 'package:clinic/helper/RouteManager.dart';
import 'package:flutter/material.dart';
import 'core/views/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteManager.routeManager,
      home: Directionality(textDirection: TextDirection.rtl, child: HomeScreen()),
    );
  }
}

