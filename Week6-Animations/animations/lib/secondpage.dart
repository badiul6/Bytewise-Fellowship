import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double _newValue = 0;

  Color? _newColor = Colors.white;
  static Widget mychild = const Image(image: AssetImage('assets/sun.png'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Tween Animation Builder"),),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: _newColor),
              duration: const Duration(milliseconds: 300),
              builder: (_, Color? color, __) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
                  child: mychild,
                );
              },
            ),
            Slider.adaptive(
              value: _newValue,
              onChanged: (value) {
                setState(() {
                  _newValue = value;
                  _newColor = Color.lerp(Colors.white,
                      Colors.greenAccent, _newValue);
                });
              },
            ),
      //     const  SizedBox(height: 20,),
      // FloatingActionButton(onPressed: (){
      // Navigator.push(context, 
      // MaterialPageRoute(builder: 
      // (context) => ThirdPage()
      // )
      // );
      // },
      // child: const Text("Next"),
      // )
          ],
        ),
      ),
    );
  }
}
