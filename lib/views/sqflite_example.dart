import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class SqfliteExample extends StatelessWidget {
  const SqfliteExample({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Database Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Enter name"),
              onSubmitted: (value) {
                userController.addUser(value, 30);
              },
            ),
            const SizedBox(height: 20),
            Obx(() {
              return userController.users.isNotEmpty
                  ? Expanded(
                child: ListView.builder(
                  itemCount: userController.users.length,
                  itemBuilder: (context, index) {
                    final user = userController.users[index];
                    return ListTile(
                      title: Text('Name: ${user.name}'),
                      subtitle: Text('Age: ${user.age}'),
                    );
                  },
                ),
              )
                  : const SizedBox();
            }),
          ],
        ),
      ),
    );
  }
}
