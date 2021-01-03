import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blueAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeContainer,
      ),
    );
  }

  void _changeContainer() {
    setState(() {
      _width = 100.0;
      _height = 20.0;
      _color = Colors.black;
    });
  }
}
