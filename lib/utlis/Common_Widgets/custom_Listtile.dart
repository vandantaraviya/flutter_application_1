import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import '../Common/app_colors.dart';

class CustomListtile extends StatelessWidget {
  String settingname;
  IconData? icon;
  String subtitle;
   CustomListtile({super.key,required this.settingname,required this.icon,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.lightContainerColor,
        ),
        child: Center(child: Icon(icon),),
      ),
      title: CustomText(
        text: settingname,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
      subtitle: CustomText(
        text: subtitle,
        color: AppColors.secondaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 8,
      ),
    );
  }
}
