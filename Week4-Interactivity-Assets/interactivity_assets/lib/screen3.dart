import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _color = false;
  void _getColor(value) {
    setState(() {
      _color = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Box"),
            MyCOntainer(
              color: _color,
              onChanged: _getColor,
            )
          ],
        ),
      ),
    );
    ;
  }
}

class MyCOntainer extends StatefulWidget {
  const MyCOntainer({super.key, this.color = false, required this.onChanged});

  final bool color;
  final ValueChanged<bool> onChanged;
  @override
  State<MyCOntainer> createState() => _MyCOntainerState();
}

class _MyCOntainerState extends State<MyCOntainer> {
  bool _border = false;
  void _tapdown(TapDownDetails details) {
    setState(() {
      _border = true;
    });
  }

  void _tapUp(TapUpDetails details) {
    setState(() {
      _border = false;
    });
  }

  void _onTap() {
    widget.onChanged(!widget.color);
  }

  void _tapCancel() {
    setState(() {
      _border = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _tapdown,
      onTapUp: _tapUp,
      onTap: _onTap,
      onTapCancel: _tapCancel,
      child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: widget.color ? Colors.blue : Colors.grey,
              border:
                  _border ? Border.all(color: Colors.red, width: 20) : null),
          child: Center(child: Text(widget.color ? "Active" : "Inactive"))),
    );
  }
}
