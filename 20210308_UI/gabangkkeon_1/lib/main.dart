import 'package:flutter/material.dart';
import 'package:gabangkkeon_1/timetable.dart';
import 'list.dart';
import 'package:gabangkkeon_1/TextWriting.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageView(
        children: [
          TimeTable(),
          NoticeBoard(),
          WritingPage(),
          ]
        )
    );
  }
}
