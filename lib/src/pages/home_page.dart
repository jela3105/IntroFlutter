import 'package:components/src/prividers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );

    //return ListView(
    //  children: _listItems(),
    //);
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: Icon(
          Icons.account_box,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
