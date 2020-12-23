import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components temp')),
      body: ListView(
          //children: _createItems()
          children: _createItemShort()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (String option in options) {
      final tempWidget = ListTile(
        title: Text(option),
      );

      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemShort() {
    return options.map((item) {
      return Column(
        children: <Widget>[ListTile(title: Text(item + '! ')), Divider()],
      );
    }).toList();
  }
}
