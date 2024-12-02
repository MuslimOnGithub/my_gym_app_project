import 'package:flutter/material.dart';
import 'package:gym_app/Components/manager_chart.dart';
import 'package:gym_app/Components/userinfo.dart';

class ManagerOverViewPage extends StatelessWidget {
  const ManagerOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        title: const Text("Over View"),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white10,
            ),
            width: 400 - 24,
            child: Column(
              children: [
                const Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.0, left: 10),
                      child: Text(
                        "Subscripers over time",
                        style: TextStyle(fontSize: 15, color: Colors.white54),
                      ),
                    ),
                    ManagerLineChart(
                      nov24: 1,
                      nov27: 2,
                      nov30: 1,
                      dec3: 2,
                      yearly: 6,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only
                  (top: 30.0, bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.orange,
                          ),
                          const Text("  Monthly Plan"),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.purple,
                          ),
                          Text("  Yearly Plan")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(" Need to renew",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                IconButton(
                    onPressed: () {
                      // dialog
                    },
                    icon: const Icon(Icons.error_outline)),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: UserInfo(
              subscription: "5",
              imagee: "4",
              username: "55",
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 10.0, left: 12),
          //   child: Text(" All subscriptions",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20,
          //       )),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: SizedBox(
          //     height: 1000,
          //     child: ListView.builder(
          //         itemCount: 2,
          //         itemBuilder: (context, index) {
          //           return const UserInfo(
          //             subscription: "5",
          //             imagee: "4",
          //             username: "55",
          //           );
          //         }),
          //   ),
          // ),
        ],
      ),
    );
  }
}
