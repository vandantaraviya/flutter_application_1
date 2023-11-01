import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
   String text;
   Color? color;
   Color? textstylecolor;
  GestureTapCallback? ontap;
   CustomButton({super.key,required this.text, required this.color, required this.textstylecolor,this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 6.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Center(
            child: CustomText(
              text: text,
                  color: textstylecolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
            )),
      ),
    );
  }
}

class CustomSocialAppLogIn extends StatelessWidget {
  ImageProvider<Object> image;
   CustomSocialAppLogIn({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                    image: AssetImage(Assets.assetsGoogleIcon),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  image:  const DecorationImage(
                    image: AssetImage(Assets.assetsFacebookIcon),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  image:  DecorationImage(
                    image: image,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}