import 'package:get/state_manager.dart';
import 'package:hello_flutter/model/user_model.dart';

class CurrentUserController extends GetxController {
  UserModel currentUser = UserModel();
  void setCurrentUser(Map<String, dynamic> json) {
    currentUser = UserModel.fromJson(json);
    update();
  }
}