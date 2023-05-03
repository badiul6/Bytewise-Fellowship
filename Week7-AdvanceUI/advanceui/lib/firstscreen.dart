import 'package:advanceui/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddIntent extends Intent {}

class SubIntent extends Intent {}

class ZeroIntent extends Intent {}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _quantity = 0;

  int _price = 0;

  void changeQuantity(int quantity, int price) {
    setState(() {
      _quantity = quantity;
      _price = price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Actions and Shortcuts"),
      ),
      body: Center(
        child: Shortcuts(
          shortcuts: {
            LogicalKeySet(LogicalKeyboardKey.arrowUp): AddIntent(),
            LogicalKeySet(LogicalKeyboardKey.arrowDown): SubIntent(),
            LogicalKeySet(LogicalKeyboardKey.digit0): ZeroIntent()
          },
          child: Actions(
            actions: <Type, Action<Intent>>{
              AddIntent: CallbackAction<AddIntent>(
                  onInvoke: (intent) =>
                      changeQuantity(_quantity + 1, _price + 500)),
              SubIntent: CallbackAction<SubIntent>(
                  onInvoke: (intent) =>
                      changeQuantity(_quantity - 1, _price - 500)),
              ZeroIntent: CallbackAction<ZeroIntent>(
                  onInvoke: (intent) => changeQuantity(0, 0)),
            },
            child: Focus(
              autofocus: true,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Iphone X",
                      style: TextStyle(fontSize: 30),
                    ),
                    const Image(
                        height: 400,
                        width: 250,
                        image: AssetImage("assets/iphonex.jpeg")),
                    Text(
                      "Quantity: $_quantity",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                                onPressed: () =>
                                    changeQuantity(_quantity - 1, _price - 500),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ))),
                        Container(
                            margin: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                                onPressed: () =>
                                    changeQuantity(_quantity + 1, _price + 500),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Price: $_price",
                        style: const TextStyle(
                            fontSize: 30, color: Colors.blueAccent)),
                    const SizedBox(
                      height: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWidget()));
                      },
                      child: const Text("Next"),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
