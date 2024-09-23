
import 'package:flutter/material.dart';

import '../widgets/AppButton.dart';
import '../widgets/MedContainer.dart';
import '../widgets/TextForm.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey <FormState> frm = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:  Form(
        key: frm,
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
              Positioned(top: 220,
                  child: TextForm(controller: nameController,
                    hint: "اسم المستخدم",
                    lable: Text("ادخل اسم المستخدم"),
                  )),
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
              Positioned(top: 460,
                  child: TextForm(controller: confirmController,
                    hint: " كلمة المرور",
                    lable: Text("تأكيد كلمة المرور"),
                    isPassword: true,
                  )),
              Positioned(top: 540,
                  child: AppButton(text: "انشاء حساب", event: (){
                  })),
              Positioned(top: 50,
                  child: Text("مرحبا بك \n في مركز بن عجاج الحديث لطب الاسنان",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            ] ),
      ),),
    );
  }
}
