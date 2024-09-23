import 'package:clinic/core/views/screens/defaultScreen.dart';
import 'package:clinic/helper/storageHelper.dart';
import 'package:flutter/material.dart';

import '../core/views/screens/LoginScreen.dart';
import '../core/views/screens/SplashScreen.dart';

class RouteManager{
  static Route <dynamic>? routeManager(RouteSettings settings){
    switch(settings.name){
      case '/login': return MaterialPageRoute(builder: (ctx)=> LoginScreen());
     // case '/home': return MaterialPageRoute(builder: (ctx)=> ResponsiveProductsScreen());
     /* case '/addproduct':return MaterialPageRoute(builder: (ctx){
        StorageHelper storageHelper =StorageHelper.instance;
        if(storageHelper.readKey("token")!=null)
          return AddProduct();
        else
          return LoginScreen();
      });*/
      case '/splash': return MaterialPageRoute(builder: (ctx)=> Splash());
      default : return MaterialPageRoute(builder: (ctx)=>DefaultScreen());
    }
  }
}