// //import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
// import 'package:dio/dio.dart';
//
// class HttpHelper{
//   static HttpHelper? httpHelper;
//   HttpHelper._();
//   static HttpHelper get instans{
//     if(httpHelper == null)
//        httpHelper = HttpHelper._();
//     return httpHelper!;
//   }
//   Dio d=Dio();
//   Future<Response> getRequest({required String url})async{
//     return await d.get(url);
//   }
//   Future<Response> postRequest({required String url,required dynamic data,Options? options})async{
//     print("d is dio");
//     return await d.post(url,data: data,options: options);
//   }
//
//   }
//