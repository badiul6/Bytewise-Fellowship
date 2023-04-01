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
            ),
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
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey)),
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
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
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
                    color: Colors.grey,
                  )),
            ),
            const Text(
              "OR",
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 25.0),
                  child: const Divider(
                    color: Colors.grey,
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
                color: Colors.blue,
              ),
              Text(
                "  Log in With Facebook",
                style: TextStyle(color: Colors.blue),
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
                                  TextStyle(color: Colors.blue, fontSize: 16))
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

