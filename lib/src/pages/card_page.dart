import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardPage')),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(
            height: 30.0,
          ),
          _cardType2()
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _cardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          //Image(
          //  image: NetworkImage(
          //      'https://i.pinimg.com/originals/34/59/3b/34593bc301b2ab36e6fa1d7f7799d6fa.jpg'),
          //),
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://i.pinimg.com/originals/34/59/3b/34593bc301b2ab36e6fa1d7f7799d6fa.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Text to show the border radius')),
        ],
      ),
    );
  }
}
