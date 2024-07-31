import 'package:education_managment/components/custom_button_auth.dart';
import 'package:education_managment/components/custom_text_field.dart';
import 'package:education_managment/components/dropdown_button.dart';
import 'package:education_managment/utils/app_routes.dart';
import 'package:education_managment/utils/colors.dart';
import 'package:education_managment/utils/images.dart';
import 'package:education_managment/view/auth/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            print("object");
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: HeaderWidget(
                    250,Icons.person),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'مرحبا بك !',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'سجل الدخول الان و تمتمع بافضل الميزات التي تؤهلك لحلمك',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 30.0),

                      CustomTextFormField(
                          label: "اسم المستخدم",
                          hint: "اسم المستخدم",
                          iconData: Icons.person,
                          validator: (value) {
                            return "";
                          },
                          controller: TextEditingController()),
                      CustomTextFormField(
                          label: "كلمة المرور",
                          hint: "كلمة المرور",
                          isPassword: true,
                          iconData: Icons.remove_red_eye,
                          validator: (value) {
                            return "";
                          },
                          controller: TextEditingController()),
                      CustomButton(
                        radius: 50,
                        onPressed: () {
                          Get.toNamed(RoutesPath.home);
                        },
                        color: AppColors.secondaryColor,
                        label: "تسجيل الدخول",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
