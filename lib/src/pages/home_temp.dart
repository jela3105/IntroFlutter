import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components temp')),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('ListTile')),
          Divider(),
          ListTile(title: Text('ListTile')),
          Divider(),
        ],
      ),
    );
  }
}
