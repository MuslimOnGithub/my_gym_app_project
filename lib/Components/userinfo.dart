import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Admin/userInfoATadmin.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {super.key,
      this.imagee,
      required this.subscription,
      required this.username});
  final String? imagee;
  final String username;
  final String subscription;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const Userinfoatadmin());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 47, 41, 41),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              const SizedBox(width: 16),
              CircleAvatar(
                radius: 40,
                backgroundImage: imagee != null ? AssetImage(imagee!) : null,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Since: $subscription",
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
