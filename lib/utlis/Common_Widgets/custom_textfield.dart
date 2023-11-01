import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';
import '../Common/app_colors.dart';


class CustomTextField extends StatelessWidget {
String titleText;
TextEditingController textEditingController;
void Function(String)? onChanged;
TextInputAction? textInputAction;
   CustomTextField({super.key, required this.titleText, required this.textEditingController, required this.onChanged,required this.textInputAction});

  @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 2.h,
        ),
        CustomText(
            text: titleText,
          color: AppColors.primaryColor,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        TextFormField(
          decoration:  const InputDecoration(
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor,),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor,),
            ),
          ),
          onChanged: onChanged,
          controller: textEditingController,
          textInputAction: textInputAction,
        ),
      ],
    );
  }
}

