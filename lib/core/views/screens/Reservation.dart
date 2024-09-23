import 'package:clinic/core/constants/TxtStyles.dart';
import 'package:clinic/core/views/widgets/AppButton.dart';
import 'package:clinic/core/views/widgets/AppDrawer.dart';
import 'package:clinic/core/views/widgets/CheckContainer.dart';
import 'package:clinic/core/views/widgets/CurvedBar.dart';
import 'package:clinic/core/views/widgets/CustomAppBar.dart';
import 'package:clinic/core/views/widgets/TimeContainer.dart';
import 'package:flutter/material.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  TextStyle textStyle = TextStyle(color: Colors.black,fontSize:18,);
  bool isTermAccepted = false;
  bool isPolicyAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "بيانات الحجز"),
      drawer: AppDrawer() ,
    //  bottomNavigationBar: CurvedBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1/3,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 15,left: 15,top: 20,bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bg2.jpg"),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
                    topRight:Radius.circular(10),bottomLeft:Radius.circular(10),bottomRight: Radius.circular(80) ),
                    color: Colors.lightBlue,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(5, 4),
                        spreadRadius: 1,
                        blurRadius: 3)
                  ],
                ),
                   // border: Border.all(color:Colors.blueAccent,width: 3)),
                child: Text("حدد التاريخ و اليوم المناسب",),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("حدد الفترة المناسبة ",style:TxtStyles.subTitleStyle),
                    TimeContainer(),
                  Text("حدد نوع الخدمة المطلوبة ",style:TxtStyles.subTitleStyle),
                    Row(children: [
                     CheckContainer(child: Column(children: [Text("خلع سن",style:TxtStyles.smallTextStyle),
                      Row(children: [
                        Checkbox(value: isTermAccepted, onChanged: (x){
                          isTermAccepted = x!;
                          setState(() {
                          });
                        }),
                        Text("اعتيادي"),
                      ],),
                      Row(children: [
                        Checkbox(value: isTermAccepted, onChanged: (x){
                          isTermAccepted = x!;
                          setState(() {
                          });
                        }),
                        Text("معقد"),
                      ],),
                      Row(children: [
                        Checkbox(value: isTermAccepted, onChanged: (x){
                          isTermAccepted = x!;
                          setState(() {
                          });
                        }),
                        Text("تقسيم"),
                      ],),
                    ],)),
                     CheckContainer(child: Column(children: [Text("حشوات",style:TxtStyles.smallTextStyle),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("فضة"),
                        ],),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("مؤقتة"),
                        ],),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("فينر تجميلي "),
                        ],),
                      ],)),
                     CheckContainer(child: Column(children: [Text("اخرى",style:TxtStyles.smallTextStyle),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("تنظيف اسنان"),
                        ],),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("تقويم اسنان"),
                        ],),
                        Row(children: [
                          Checkbox(value: isTermAccepted, onChanged: (x){
                            isTermAccepted = x!;
                            setState(() {
                            });
                          }),
                          Text("نزع عصب"),
                        ],),
                      ],))
                    ],),
                    Center(child: AppButton(text: "تأكيد الحجز", event: (){},)),
                ],),
              ),
          
            ],),
        )),
      )

    );
  }
}
