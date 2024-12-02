import 'package:flutter/material.dart';
import 'package:gym_app/Components/product.dart';

class Shoping extends StatelessWidget {
  const Shoping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(children: const [
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ptoductinfo(
              image: "assets/no-joke.jpg",
              productname: "Protyn",
              details: "zzzzzzzz",
              price: 50,
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ));
  }
}
