
import 'package:clinic/core/views/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/AppButton.dart';
import '../widgets/AppDrawer.dart';
import '../widgets/CurvedBar.dart';
import '../widgets/TextForm.dart';
import '../widgets/TimeContainer.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: AppDrawer(),
      body: Center(
        child: Column(
          children: [
            Center(child: TimeContainer()),
            TextForm(),
            AppButton(text: "login", event: (){})
          ],
        ),
      ),

   //   bottomNavigationBar: CurvedBar(),
    );
  }
}
