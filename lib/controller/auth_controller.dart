import 'dart:convert';

import 'package:education_managment/models/student_model.dart';
import 'package:education_managment/utils/api_urls.dart';
import 'package:education_managment/utils/app_routes.dart';
import 'package:education_managment/utils/cache_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  /// this param for registration form
  late TextEditingController fullName;
  late TextEditingController school;
  late TextEditingController phone;
  late TextEditingController username;
  late TextEditingController password;
  String? gender;
  String? classLevel;
  String? idImageUrl;

  @override
  void onInit() {
    super.onInit();
    fullName = TextEditingController();
    school = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
  }

  Future<void> register() async {
    StudentModel studentModel = StudentModel(
        fullName: fullName.text,
        school: school.text,
        phone: phone.text,
        gender: gender ?? '',
        classLevel: classLevel ?? '',
        idImage: idImageUrl ?? '',
        username: username.text,
        password: password.text);
    try {
      var req = await http.post(Uri.parse(registerUrl),
          body: studentModel.toJson(), headers: headerApi);
      if (req.statusCode == 200) {
        if (jsonDecode(req.body)['status'] == "success") {
          Get.snackbar("", "تم إرسال طلبك بنجاح");
          Get.offAllNamed(RoutesPath.auth);
        } else {
          Get.snackbar("خطأ", jsonDecode(req.body)['message'],
              backgroundColor: Colors.red, colorText: Colors.white);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> login(String username, String password) async {
    try {
      var req = await http.post(Uri.parse(loginUrl),
          body: jsonEncode({"username": username, "password": password}),
          headers: headerApi);
      if (req.statusCode == 200) {
        if (jsonDecode(req.body)['status'] == "success") {
          CacheHelper.putData(
              key: "student",
              value: jsonEncode(jsonDecode(req.body)['student']));
          Get.offNamed(RoutesPath.home);
        } else {
          Get.snackbar("خطأ", "خطأ في اسم المستخدم او كلمة المرور",
              colorText: Colors.white, backgroundColor: Colors.red);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
