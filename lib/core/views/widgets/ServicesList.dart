import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
   ServicesList({super.key});
  bool isSelected = false;
  List <String> services = ["معاينة عامة","تنظيف اسنان",
    "تقويم اسنان","نزع عصب",
    "خلع سن","تراكيب اسنان",
    "حشوات","حالات خاصة",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // number of items in each row
      mainAxisSpacing: 5.0, // spacing between rows
      crossAxisSpacing: 5.0, // spacing between columns
    ),
        itemCount: services.length,
        itemBuilder: (ctx,index){
      return Container(child: Card(
        child: Column(children: [Container(padding: EdgeInsets.all(5),
            child: Image.asset("images/teeth1.png",height:70,width: 60,)),
          Row(children: [
            Checkbox(value: isSelected, onChanged: (x){
              isSelected = x!;
            }),
            Text("${services[index]}"),
          ],),
        ],) ,
      ));
        });
  }
}
