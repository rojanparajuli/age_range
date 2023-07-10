import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRangeValues = RangeValues(18, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Select age: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
                style: TextStyle(fontSize: 50.0,color:(Colors.pink)),
              ),
              SizedBox(height: 20.0),
              RangeSlider(
                values: _currentRangeValues,
                min: 18,
                max: 90,
                divisions: 10,
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



