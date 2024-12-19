import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

import '../model/user_model.dart';

class UserController extends GetxController {
  List<UserModel> users = [];

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    users = await UserService().getUsers();
    update();
  }
}
