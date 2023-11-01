import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import '../Common/app_colors.dart';


class Customchatlist extends StatelessWidget {
   String name;
   ImageProvider<Object> image;
   String chat;
  GestureTapCallback? ontap;
   Customchatlist({super.key,required this.name,required this.image,required this.chat,this.ontap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: ListTile(
          leading: Container(
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
          title: CustomText(
            text: name,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10,
          ),
          subtitle: CustomText(
            text: chat,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 8,
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 5, right: 5),
            child: Column(
              children: [
                CustomText(
                  text: TextRes.time,
                    color: AppColors.secondaryColor,
                    fontSize: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.unreadmsgColors,
                  ),
                  child: CustomText(
                    text: TextRes.unreadmsg,
                        color: AppColors.white, fontSize: 9,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
