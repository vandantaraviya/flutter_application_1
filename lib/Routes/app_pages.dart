import 'package:flutter_application_1/Modules/Screen/Contacts/Contacts_screen.dart';
import 'package:flutter_application_1/Modules/Screen/Home/Home_screen.dart';
import 'package:flutter_application_1/Modules/Screen/Setting/Setting_screen.dart';
import 'package:flutter_application_1/Modules/Screen/authentication/onbording/onbording_screen.dart';
import 'package:get/get.dart';
import '../Modules/Screen/Calls/call_screen.dart';
import '../Modules/Screen/Message/Message_Screen.dart';
import '../Modules/Screen/authentication/Login/Login_screen.dart';
import '../Modules/Screen/authentication/Signup/signup_screen.dart';
import '../Modules/Screen/authentication/Splesh Screen/Splesh_screen.dart';
import '../Modules/Screen/bottomNavigationBar_screen.dart';
import 'routes.dart';


 const String initalRoute = Routes.splash;

final appPages = [
  GetPage(
    name: Routes.splash,
    page: () => const Splash(),
  ),
  GetPage(
    name: Routes.onBoarding,
    page: () => const Onboarding(),
  ),
  GetPage(
    name: Routes.logIn,
    page: () => const LogIn(),
  ),
  GetPage(
    name: Routes.signUp,
    page: () => const SignUp(),
  ),
  GetPage(
    name: Routes.homeScreen,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: Routes.bottamNavigation,
    page: () => const Bottamnavigation(),
  ),
  GetPage(
    name: Routes.settingScreen,
    page: () => const SettingScreen(),
  ),
  GetPage(
    name: Routes.callScreen,
    page: () => const Callscreen(),
  ),
  GetPage(
    name: Routes.contactsScreen,
    page: () => const ContactsScreen(),
  ),
  GetPage(
    name: Routes.messageScreen,
    page: () =>  MessageScreen(),
  ),
];