import 'package:flutter/material.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  @override
  createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _date = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson(),
          Divider(),
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
      onChanged: (value) => setState(() {
        _name = value;
      }),
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name is: $_name'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Email ',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (value) => setState(() {
        _email = value;
      }),
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (value) => setState(() {}),
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Birthday',
        labelText: 'Birthday',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime pickedDay = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
    );
    if (pickedDay != null) {
      setState(() {
        _date = pickedDay.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }
}
