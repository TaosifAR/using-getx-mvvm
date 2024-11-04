import 'package:get/get.dart';
import '../models/user_model.dart';
import '../services/user_database.dart';

class UserController extends GetxController {
  var users = <User>[].obs;
  final UserDatabase _userDatabase = UserDatabase();

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    users.value = await _userDatabase.fetchUsers();
  }

  void addUser(String name, int age) {
    final user = User(name: name, age: age);
    _userDatabase.insertUser(user);
    fetchUsers(); // Refresh the list
  }
}
