import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardPage')),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardType1()],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('THIS IS THT TITLE'),
            subtitle: Text(
                'This text is the subtitle of the card, is a description and an example about how the text is shown'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
