// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class Customchat extends StatelessWidget {
   String name;
   String msg;
   String time;
   ImageProvider<Object> image;
  GestureTapCallback? ontap;
   Customchat({super.key,required this.name,required this.msg,required this.time,required this.image,this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
              CustomText(
                text: msg,
                color: Colors.grey,
                fontSize: 8,
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: time,
                color: Colors.grey,
                fontSize: 8,
              ),
            ],
          ),
          SizedBox(
            width: 4.w,
          )
        ],
      ),
    );
  }
}