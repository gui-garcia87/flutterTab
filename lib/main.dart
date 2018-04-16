import 'package:flutter/material.dart';

void main() => runApp(new TabFlutter());

class TabFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: <Widget>[
                new Tab(icon: new Icon(Icons.directions_bike)),
                new Tab(icon: new Icon(Icons.directions_transit)),
                new Tab(icon: new Icon(Icons.directions_car)),
              ],
            ),
            title: new Text('Tab Flutter'),
          ),
          body: new TabBarView(
            children: [
              new Icon(Icons.directions_bike),
              new Icon(Icons.directions_transit),
              new Icon(Icons.directions_car)
            ],
          ),
        ),
      ),
    );
  }
}
