import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/User/profile.dart';

class Userinfoatadmin extends StatelessWidget {
  const Userinfoatadmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 160),
                child: const Text(
                  "User Name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.only(left: 20, top: 35),
                child: const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.purpleAccent,
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 47, 41, 41),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text(
                      "User Bio",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: const Text(
                        style: TextStyle(color: Colors.grey),
                        "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 47, 41, 41),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text(
                      "Remaining subscription",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 170,
                              height: 7,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 120,
                              height: 7,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("75%"),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Started At",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            const Text(
                              "4/7/2003",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Ending At",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            const Text(
                              "4/8/2003",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 47, 41, 41),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Exercises",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Exercises(
                          ex1: "ww",
                          ex2: "55",
                          ex3: "66",
                          ex4: "75",
                          ex5: "sd",
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
