import 'package:covid_19/screen/map_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return MaterialApp(
      title: 'Covid-19',
      home: MapScreen(),
      );
  }
}
