import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addImages();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_addImages();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: Stack(children: <Widget>[
        _createList(),
        _createLoading(),
      ]),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _numberList.length,
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        final image = _numberList[index];

        return FadeInImage(
          image: NetworkImage('http://picsum.photos/500/300/?image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  void _addImages() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }
    setState(() {});
  }

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    new Timer(duration, responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _addImages();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
