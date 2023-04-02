import 'package:flutter/material.dart';
import 'package:widgetslayout/profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var str = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome $str",
            style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 55, 46)),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  str = value;
                });
              },
              decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 131, 130, 130))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 131, 130, 130))),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: Container(
              margin: const EdgeInsets.all(25),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
          Row(children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                  child: const Divider(
                    color: Colors.black,
                  )),
            ),
            const Text(
              "OR",
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 25.0),
                  child: const Divider(
                    color: Colors.black,
                  )),
            ),
          ]),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.facebook,
                color: Color.fromARGB(255, 10, 102, 177),
              ),
              Text(
                "  Log in With Facebook",
                style: TextStyle(color: Color.fromARGB(255, 6, 95, 169)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Forgot Password?",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(25),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: RichText(
                    text: const TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "  Sign up",
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 16))
                        ]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
