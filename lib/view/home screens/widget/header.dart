import 'package:education_managment/models/student_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.studentModel});

  final StudentModel studentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(20),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Image.asset(AssetsImages.student, width: 80),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "رقم الطالب : ${studentModel.studentNumber}",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                 studentModel.fullName,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الصف : ${studentModel.classLevel}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "الشعبة : 13",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
