import 'package:flutter/material.dart';

class productdetailss extends StatelessWidget {
  const productdetailss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 400,
              child: Image.asset(
                "assets/no-joke.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const Text(
                  "Product Name",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  width: 130,
                ),
                Container(
                  color: Colors.white,
                  child: const Icon(
                    Icons.plus_one,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.white,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 370, top: 20),
            child: const Text(
              "Details",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                const Column(
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "100",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 47, 41, 41),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: 200,
                  height: 100,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Container(
            margin: const EdgeInsets.only(right: 280, top: 20),
            child: const Text(
              "Suggestion",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: const Color.fromARGB(255, 47, 41, 41),
                    child: Image.asset("assets/no-joke.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
