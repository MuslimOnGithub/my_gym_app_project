import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/Admin/adduser.dart';
import 'package:gym_app/Components/manager_chart.dart';
import 'package:gym_app/Components/userinfo.dart';
// import 'package:intl/intl.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        title: const Text("All Users"),
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
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 1000,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const UserInfo(
                      subscription: "5",
                      imagee: "4",
                      username: "55",
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
