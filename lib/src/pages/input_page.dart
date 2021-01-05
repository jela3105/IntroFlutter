import 'package:flutter/material.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  @override
  createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input of text'),
      ),
      body: ListView(
        children: <Widget>[
          _createInput(),
          Divider(),
          _createPerson(),
        ],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {},
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Characteres ${_name.length}'),
        hintText: 'Name of the person',
        labelText: 'Name',
        suffixIcon: Icon(Icons.accessibility),
        helperText: 'Just the name',
        icon: Icon(Icons.account_box),
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name is: $_name'),
    );
  }
}
