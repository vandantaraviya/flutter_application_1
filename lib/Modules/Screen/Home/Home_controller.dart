// ignore: avoid_web_libraries_in_flutter
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';


class Homecontroller extends GetxController{
  File? file;
  PlatformFile? pickedFile;

  Future<void> onTapSelectImage() async {
    var pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    file = File(pickedImage!.path);
    update();
  }

  Future<void> onTapSelectcamera() async {
    var cameraImage = await ImagePicker().pickImage(source: ImageSource.camera);
    file = File(cameraImage!.path);
    update();
  }


  void showPicker(BuildContext context,) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: SizedBox(
            height: 20.h,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 15,right: 15,),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      // ignore: sort_child_properties_last
                      child: Center(child: Icon(Icons.photo_library,size: 20.sp,color: Colors.grey.shade600,),),
                      backgroundColor: Colors.grey.shade300,
                    ),
                    title: const Text('Photo Library'),
                    onTap: () {
                      onTapSelectImage();
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      // ignore: sort_child_properties_last
                      child: Center(child: Icon(Icons.photo_camera,size: 20.sp,color: Colors.grey.shade600,),),
                      backgroundColor: Colors.grey.shade300,
                    ),
                    title: const Text('Camera'),
                    onTap: () {
                      onTapSelectcamera();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  navigetomsg(){
    Get.toNamed(Routes.messageScreen,);
  }
}
