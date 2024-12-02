import 'package:flutter/material.dart';
import 'package:gym_app/User/profileedit.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profileedit()));
            },
            icon: const Icon(
              Icons.edit,
            ),
            color: Colors.white,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 47, 41, 41),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                // padding: const EdgeInsets.only( top: 37),
                                child: const CircleAvatar(
                                    radius: 70,
                                    backgroundImage: AssetImage(
                                        "assets/20221023_152100.jpg"))),
                            //                                         const SizedBox(
                            //   height: 15,
                            // ),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 31, 27, 27),
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35, vertical: 15)),
                                onPressed: () {},
                                child: const Text(
                                  "Beginner",
                                  style: TextStyle(fontSize: 15),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 28, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Full Name:",
                                  style: TextStyle(
                                      color: Colors.white24, fontSize: 16),
                                ),
                                Text(
                                  "Ziad Galal",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact:",
                                  style: TextStyle(
                                      color: Colors.white24, fontSize: 16),
                                ),
                                Text(
                                  "01069161841",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Subscription:",
                                  style: TextStyle(
                                      color: Colors.white24, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: 120,
                                          height: 7,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: 85,
                                          height: 7,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("75%"),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profileedit()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 47, 41, 41),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text(
                            "About Me",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Add Bio Here",
                                style: TextStyle(
                                    color: Colors.white24, fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(top: 16),
                //   height: 220,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(25),
                //     color: const Color.fromARGB(255, 47, 41, 41),
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //         padding: const EdgeInsets.only(left: 20, top: 20),
                //         child: const Text(
                //           "My Exercises",
                //           style: TextStyle(fontSize: 30, color: Colors.white),
                //         ),
                //       ),
                //       Container(
                //         padding: const EdgeInsets.only(left: 20, top: 20),
                //         child: const Text(
                //           "Favourite",
                //           style: TextStyle(
                //               color: Color.fromARGB(255, 87, 87, 87),
                //               fontWeight: FontWeight.w900,
                //               fontSize: 15),
                //         ),
                //       ),
                //       SizedBox(
                //         width: double.infinity,
                //         height: 100,
                //         child: ListView(
                //           scrollDirection: Axis.horizontal,
                //           children: [
                //             Row(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Exercises(
                //                   ex1: "awl tmryn",
                //                   ex2: "eltany",
                //                   ex3: "eltalt",
                //                   ex4: "elrab3",
                //                   ex5: "elams",
                //                 )
                //               ],
                //             ),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profileedit()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 47, 41, 41),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text(
                            "Social Media",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text(
                            "Follow Me On",
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 87, 87),
                                fontWeight: FontWeight.w900,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.snapchat,
                                  color: Colors.white24,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white24,
                                  size: 50,
                                ),
                                Icon(
                                  Icons.tiktok_outlined,
                                  color: Colors.white24,
                                  size: 50,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Exercises extends StatelessWidget {
  Exercises({super.key, this.ex1, this.ex2, this.ex3, this.ex4, this.ex5});
  String? ex1;
  String? ex2;
  String? ex3;
  String? ex4;
  String? ex5;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: [
          Text(
            ex1!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex2!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex3!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex4!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex5!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
