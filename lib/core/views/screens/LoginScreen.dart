
import 'package:clinic/core/views/screens/Reservation.dart';
import 'package:flutter/material.dart';

import '../widgets/AppButton.dart';
import '../widgets/MedContainer.dart';
import '../widgets/TextForm.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
   GlobalKey <FormState> frm = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form( key: frm,
          child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children:[
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.blueAccent),
                  ),
                ),
                MedContainer(margin: EdgeInsets.only(top: 200),),
                Positioned(top: 300,
                    child: TextForm(controller: emailController,
                      hint: "البريد الالكتروني",
                      lable:Text("ادخل البريد الالكتروني") ,
                    )),
                Positioned(top: 380,
                    child: TextForm(controller: passwordController,
                      hint: " كلمة المرور",
                      lable: Text("ادخل كلمة المرور"),
                      isPassword: true,
                    )),

                Positioned(top: 540,
                    child: AppButton(text: "انشاء حساب", event: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Reservation()));
                    })),
                Positioned(top: 50,
                    child: Text("مرحبا بك \n في مركز بن عجاج الحديث لطب الاسنان",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ] ),
        ),
      ),
    );
  }
}
