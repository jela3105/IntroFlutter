import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 9.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AAUvwniSOnUfYbdRPYEk0I4GqF16MW8YxZYjHR1o14CGfw=s900-c-k-c0x00ffffff-no-rj')),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JL'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://rtvc-assets-radionica3.s3.amazonaws.com/s3fs-public/styles/image_750x424/public/field/image/article/twentyone_pilots-trench.jpg?itok=YkmWss1Y'),
        ),
      ),
    );
  }
}
