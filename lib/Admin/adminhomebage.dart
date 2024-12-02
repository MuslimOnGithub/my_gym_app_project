import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Admin/adduser.dart';
import 'package:gym_app/Components/userinfo.dart';
import 'package:intl/intl.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const Adduser());
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome, Ziad",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/20221023_152100.jpg"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: const TextStyle(color: Colors.white),
                filled: false,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
            const UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
