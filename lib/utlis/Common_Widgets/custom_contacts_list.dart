import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class Customcontactslist extends StatelessWidget {
   String text;
   String subtitle;
   ImageProvider<Object> image;
   Customcontactslist({super.key,required this.image,required this.text,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: image,
                      fit: BoxFit.fill,
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
                      text: text,
                        color:  AppColors.black,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 10,
                    ),
                    SizedBox(height: 0.5.h,),
                    Row(
                      children: [
                        SizedBox(width: 0.5.w,),
                        CustomText(
                          text: subtitle,
                            color: AppColors.secondaryColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
