import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/Shop/productdetailssss.dart';

class ptoductinfo extends StatelessWidget {
  const ptoductinfo(
      {super.key,
      required this.image,
      required this.productname,
      required this.details,
      required this.price});
  final String image;
  final String productname;
  final String details;
  final int price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const productdetailss());
      },
      child: Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 47, 41, 41),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 20),
                  child: CircleAvatar(
                    radius: 90,
                    foregroundImage: AssetImage(image),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60, right: 30),
                  child: Column(
                    children: [
                      Text(
                        productname,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        details,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const Text(
                        "price",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ])),
    );
  }
}
