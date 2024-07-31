import 'package:education_managment/models/student_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late StudentModel studentModel;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    studentModel = StudentModel.getStuderData();
    print(studentModel.toMap());
  }
}
