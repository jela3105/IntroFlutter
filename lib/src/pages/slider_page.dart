import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _blockCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image size',
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheckBox)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://www.cecyt9.ipn.mx/assets/files/cecyt9/img/escudos/escudoCECyT9.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
      title: Text('Block slider'),
      value: _blockCheckBox,
      onChanged: (value) {
        setState(() {
          _blockCheckBox = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Block slider'),
      value: _blockCheckBox,
      onChanged: (value) {
        setState(() {
          _blockCheckBox = value;
        });
      },
    );
  }
}
