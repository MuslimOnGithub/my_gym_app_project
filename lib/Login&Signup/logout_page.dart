import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Login&Signup/introbage.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<LogOutPage> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"),),
      body: Center(
          child:
              ElevatedButton(onPressed: () {
                Get.offAll(() => const IntroPage());
              }, child: const Text("LOG OUT"))),
    );
  }
}
