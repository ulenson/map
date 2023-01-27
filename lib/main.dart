


import 'package:flutter/material.dart';
import 'package:map/screens/list.dart';
import 'package:map/screens/yandex_map.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
        // const YandexMapPage(),
        const List()
    );
  }
}

