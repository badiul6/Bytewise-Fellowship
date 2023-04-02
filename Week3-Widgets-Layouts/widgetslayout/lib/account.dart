import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.account_circle,
          size: 35,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "User name",
              style: TextStyle(fontSize: 12),
            ),
            Text("Eler Minton")
          ],
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            child: RichText(
              text: const TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio diam, rutrum ac magna eu, luctus egestas nulla. Aliquam non tellus egestas, aliquam ipsum at, molestie lectus.',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(
                        text: " Learn More.",
                        style: TextStyle(
                            color: Color.fromRGBO(109, 31, 143, 1),
                            fontSize: 16))
                  ]),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 310,
                width: 300,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 50, 47, 47),
                    color: const Color.fromARGB(255, 29, 64, 124),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 70, 65, 65),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 160,
                      ),
                      const Text(
                        "Card Holder",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Badiul Jamal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "1478 2255 4505 9874",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Image(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/300px-Mastercard_2019_logo.svg.png'),
                              width: 30,
                              height: 20)
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "10/24",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "Master Card",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 230,
                width: 300,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 50, 47, 47),
                    color: const Color.fromARGB(255, 29, 64, 124),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 70, 65, 65),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        "Card Holder",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Badiul Jamal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "1478 2255 4505 9874",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Image(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/300px-Mastercard_2019_logo.svg.png'),
                              width: 30,
                              height: 20)
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "10/24",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "Master Card",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 47, 47),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 70, 65, 65),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Card Holder",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Badiul Jamal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "1478 2255 4505 9874",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Image(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/300px-Mastercard_2019_logo.svg.png'),
                              width: 30,
                              height: 20)
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "10/24",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "Master Card",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        fixedSize: const Size(200, 40),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Send Money",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        fixedSize: const Size(200, 40),
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Pay Bill",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  fixedSize: const Size(220, 45),
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Add Money",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
