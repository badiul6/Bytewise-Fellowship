import 'package:flutter/material.dart';

class ParentWid extends StatefulWidget {
  const ParentWid({super.key});

  @override
  State<ParentWid> createState() => _ParentWidState();
}

class _ParentWidState extends State<ParentWid> {
  bool _active = false;
  void _handletap(bool value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Box"),
            MyCon(active: _active, onChanged: _handletap)
          ],
        ),
      ),
    );
  }
}

class MyCon extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;
  const MyCon({
    super.key,
    this.active = false,
    required this.onChanged,
  });

  void _tap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tap,
      child: Container(
        height: 250,
        width: 200,
        color: active ? Colors.blue : Colors.grey,
        child: Center(child: Text(active ? "Active" : "Inactive")),
      ),
    );
  }
}
