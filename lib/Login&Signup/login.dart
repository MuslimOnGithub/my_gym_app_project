import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Admin/adminlogin.dart';
import 'package:gym_app/Model/User.dart';
import 'package:gym_app/Model/app_database.dart';
import 'package:gym_app/Navigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    UserDatabase userDatabase = UserDatabase();

    bool isEmailInList(String email, List<String> emailList) {
      return emailList.contains(email);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  "assets/login.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height / 70),
          Center(
            child: const Text(
              "Login",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 255, 213),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height / 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    if (_email.text == '' || _password.text == '') {
                      showInSnackBar(context, "Improper Email or Password");
                      print("+");
                    } else {
                      Get.off(() => const NavPage(
                            isManager: false,
                          ));
                    }

                    // _email.clear();
                    // _password.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 255, 213),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const adminlogin());
                  },
                  child: const Text(
                    "Are You A Coach?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 213),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showInSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.grey.shade900,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        )));
  }
}
