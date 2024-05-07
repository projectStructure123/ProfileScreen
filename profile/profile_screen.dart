import 'package:flutter/material.dart';

import '../../util/image_constant.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Directionality(
          textDirection: TextDirection.rtl,
            child: const Icon(Icons.arrow_forward_ios, color: Colors.purple,)),
        title: const Text("حسابي", style: TextStyle(fontSize: 30, fontFamily: 'Sen'),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [

              const SizedBox(height: 20),
              ProfileMenu(
                text: "المعلومات الشخصية",
                icon: ImageConstant.UserIcon,
                press: () => {},
              ),
              ProfileMenu(
                text: "طلباتي",
                icon: ImageConstant.UserIcon,
                press: () => {},
              ),
              ProfileMenu(
                text: "التنبيهات",
                icon: ImageConstant.BellIcon,
                press: () {},
              ),
              ProfileMenu(
                text: "الاعدادات",
                icon: ImageConstant.SettingsIcon,
                press: () {},
              ),

              ProfileMenu(
                text: "تسجيل الخروج",
                icon: ImageConstant.LogOutIcon,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
