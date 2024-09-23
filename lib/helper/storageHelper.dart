// import 'dart:io';
//
// import 'package:get_storage/get_storage.dart';
//
// class StorageHelper{
//  static StorageHelper? storage ;
//  StorageHelper._();
//  static StorageHelper get instance {
//    if(storage == null)
//      storage = StorageHelper._();
//    return storage!;
//  }
//  GetStorage box = GetStorage();
//
//  readKey(String key){
//    return box.read(key);
//  }
//
//  writeKey(String key , String value){
//    return box.write(key, value);
//  }
//
//  removeKey(String key){
//    return box.remove(key);
//  }
//
//  removeAll(){
//    return box.erase();
//  }
//
//     addToFile ({required String name,required String desc ,
//    required double price , required String image}) async{
//    File data = File("productData.txt");
//    data.writeAsStringSync(name,mode:FileMode.append);
//    data.writeAsStringSync(desc,mode:FileMode.append);
//    data.writeAsStringSync(price.toString(),mode:FileMode.append);
//    data.writeAsStringSync(image,mode:FileMode.append);
//    return data;
//  }
// }