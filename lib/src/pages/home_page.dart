import 'package:components/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:components/src/prividers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';

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
          children: _listItems(snapshot.data, context),
        );
      },
    );

    //return ListView(
    //  children: _listItems(),
    //);
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          //final route = MaterialPageRoute(builder: (context) => AlertPage());
          //Navigator.push(context, route);
          Navigator.pushNamed(context, opt['route']);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
