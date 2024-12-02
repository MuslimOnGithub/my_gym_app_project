import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Components/userinfo.dart';
import 'package:gym_app/Model/User.dart';
import 'package:gym_app/Model/app_database.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final _userStream =
        Supabase.instance.client.from('users').stream(primaryKey: ['id']);

    final nameController = TextEditingController();
    final passwoedController = TextEditingController();

    Future<AppUser> addUser(String name, String password) async {
      final newUser = AppUser(
        name: name,
        email: "${name.toLowerCase().replaceAll(' ', '')}@peakfit.com",
        password: password,
        date: DateFormat.yMMMd().format(DateTime.now()),
        phone: '',
        pfp: "",
      );
      final user = UserDatabase();

      // Creat new workout
      user.addNewUser(newUser);
      return newUser;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        title: const Text("All Memebers"),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  title: const Text("Add User"),
                  content: Column(
                    children: [
                      TextField(
                          controller: nameController,
                          decoration:
                              const InputDecoration(labelText: "Full Name")),
                      TextField(
                          obscureText: true,
                          controller: passwoedController,
                          decoration: const InputDecoration(
                            labelText: "Password",
                          )),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Get.back();
                          nameController.clear();
                          passwoedController.clear();
                        },
                        child: const Text("Cancel")),
                    TextButton(
                      onPressed: () async {
                        await addUser(
                            nameController.text, passwoedController.text);
                        Get.back();
                        // Get.to(() => WorkoutPage(workout: newWorkout));
                      },
                      child: const Text("Save"),
                    )
                  ],
                )));
      },      child: const  Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: StreamBuilder<List<Map<String, dynamic>>>(
            stream: _userStream,
            builder: ((context, snapshot) {
              // Loading
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              // Loaded
              final users = snapshot.data;
        
              return ListView.builder(
                  itemCount: users!.length,
                  itemBuilder: ((context, index) {
                    final user = AppUser.fromJson(users[index]);
                      
                    final userName = user.name;
                      
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Delete User"),
                              content: const Text(
                                  "This action is not reversible!"),
                              actions: [
                                TextButton(
                                  onPressed: () => Get.back(),
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    UserDatabase().deleteUser(user);
                                    Get.back(); // Close dialog
                                  },
                                  child: const Text("Delete"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: UserInfo(
                        subscription: user.date,
                        imagee: "4",
                        username: userName,
                        showIcon: true,
                      ),
                    );
                  }));
            })),
      ),
    );
  }
}
