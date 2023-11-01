import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../authentication_controller.dart';
import 'signup_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Signupcontroller());
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                 SizedBox(
                  height: 1.h,
                ),
                backpagesignup(),
                 SizedBox(
                  height: 2.h,
                ),
                signuptitle(),
                 SizedBox(
                  height: 2.h,
                ),
                signuptitle1(),
                SizedBox(
                  height: 3.h,
                ),
                textfiled1(),
                textfiled2(),
                textfiled3(),
                textfiled4(),
                 SizedBox(
                  height: 11.h,
                ),
                signupbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


