import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:gym_app/Login&Signup/login.dart';
import 'package:gym_app/Navigation.dart';

class Adduser extends StatelessWidget {
  const Adduser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/login.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add User",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 50),
                    _buildTextField("Name", context),
                    const SizedBox(height: 20),
                    _buildTextField("Email", context),
                    const SizedBox(height: 20),
                    _buildTextField("Phone Number", context),
                    const SizedBox(height: 20),
                    _buildTextField(
                      "Subscription type",
                      context,
                    ),
                    const SizedBox(height: 20),
                    _buildTextField("Confirm Password", context,
                        obscureText: true),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          // Get.off(() => const NavPage());
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 255, 213),
                        ),
                        child: const Text(
                          "Signup",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildTextField(String labelText, BuildContext context,
    {bool obscureText = false}) {
  return SizedBox(
    width: 450,
    child: TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey[800],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    ),
  );
}
