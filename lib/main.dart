import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Sizer(
        builder: (context, orientation, deviceType){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.splash,
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            getPages: appPages,
          );
        }
    );
  }
}

