import 'package:education_managment/components/custom_button_auth.dart';
import 'package:education_managment/components/custom_text_field.dart';
import 'package:education_managment/components/dropdown_button.dart';
import 'package:education_managment/utils/colors.dart';
import 'package:education_managment/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "التسحيل الالكتروني",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            print("object");
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      AssetsImages.id,
                      color: AppColors.primaryColor,
                      width: 200,
                    ),
                    CustomTextFormField(
                        label: "الاسم الثلاثي",
                        hint: "الاسم الثلاثي",
                        iconData: Icons.edit,
                        validator: (value) {
                          return "";
                        },
                        controller: TextEditingController()),
                    CustomTextFormField(
                        label: "اسم المدرسة",
                        hint: "اسم المدرسة",
                        iconData: Icons.school,
                        validator: (value) {
                          return "";
                        },
                        controller: TextEditingController()),
                    CustomTextFormField(
                        label: "رقم الهاتف",
                        hint: "+963 ----------",
                        iconData: Icons.phone_android,
                        validator: (value) {
                          return "";
                        },
                        controller: TextEditingController()),
                    CustomDropdownButton(
                      hint: "الجنس",
                      values: ["انثى", "ذكر"],
                      onChanged: (value) {},
                    ),
                    CustomDropdownButton(
                      hint: "الفئة الدراسية",
                      values: ["تاسع", "بكلوريا"],
                      onChanged: (value) {},
                    ),
                    CustomButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "اختر صورة الهوية الشخصية",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      color: AppColors.secondaryColor,
                      onPressed: () {},
                      label: "تثبيت التسجيل",
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
