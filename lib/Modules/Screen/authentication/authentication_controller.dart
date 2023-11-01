import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:get/get.dart';

class LogIncontroller extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isempty = false;

  validator(){
    if(email.text.isEmpty || password.text.isEmpty){
      isempty = false;
    }else{
      isempty = true;
    }
    update();
  }
}


class Signupcontroller extends GetxController{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool isTextEmpty = false;

  validator(){
    if(name.text.isEmpty || email.text.isEmpty || password.text.isEmpty || confirmpassword.text.isEmpty){
      isTextEmpty = false;
    }else{
      isTextEmpty = true;
    }
    update();
  }

}