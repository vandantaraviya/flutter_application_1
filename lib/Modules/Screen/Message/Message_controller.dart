// ignore: file_names
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_Listtile.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Messagecontroller  extends GetxController{

  Future<void> sheet(BuildContext context){
    return showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 500.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Get.back();
                      },
                      icon: Icon(CupertinoIcons.clear,size: 20.sp,color: Colors.black,),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    CustomText(
                        text: TextRes.shareContent,
                          color: Colors.black,
                          fontSize: 12,
                    ),
                  ],
                ),
                CustomListtile(
                  settingname: TextRes.camera,
                  icon: CupertinoIcons.camera,
                  subtitle: '',
                ),
                CustomListtile(
                  settingname: TextRes.documents,
                  icon: CupertinoIcons.doc,
                  subtitle: TextRes.shareyourfiles,
                ),
                CustomListtile(
                  settingname: TextRes.createapoll,
                  icon: CupertinoIcons.chart_bar,
                  subtitle: TextRes.createapollDesc,
                ),
                CustomListtile(
                  settingname: TextRes.media,
                  icon: CupertinoIcons.photo,
                  subtitle: TextRes.sharephotosetc,
                ),
                CustomListtile(
                  settingname: TextRes.contact,
                  icon: CupertinoIcons.profile_circled,
                  subtitle: TextRes.sharcontacts,
                ),
                CustomListtile(
                  settingname: TextRes.location,
                  icon: Icons.pin_drop_outlined,
                  subtitle: TextRes.sharelocation,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}