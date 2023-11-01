import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class Customcalllist extends StatelessWidget {
  String text;
  String time;
  ImageProvider<Object> image;
   Customcalllist({super.key,required this.text,required this.time,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.fill,
                ),
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
                  color: AppColors.black,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 10,
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone_arrow_down_left,
                      size: 12.sp,
                      color: AppColors.callreciveiconColors,
                    ),
                    SizedBox(
                      width: 0.5.w,
                    ),
                    CustomText(
                      text: time,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 8,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  CupertinoIcons.phone,
                  size: 20.sp,
                  color: AppColors.calliconColors,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Icon(
                  CupertinoIcons.videocam,
                  size: 20.sp,
                  color: AppColors.calliconColors,
                ),
              ],
            ),
            SizedBox(
              width: 4.w,
            )
          ],
        ),
      ],
    );
  }
}
