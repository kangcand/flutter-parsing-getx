import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:parsingujikom/services/user_service.dart';

import '../models/user_model.dart';

class UserController extends GetxController {
  var userList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  void fetchUserData() async {
    try {
      isLoading(true);
      var users = await UserService.fetchUserData();
      userList.value = users.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
