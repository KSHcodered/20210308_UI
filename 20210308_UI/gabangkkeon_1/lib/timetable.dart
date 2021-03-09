import 'package:flutter/material.dart';


class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    Widget ASection = Container(
      padding: const EdgeInsets.all(28),
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    '2021학년도 1학기',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.black,
                  ),
              ],
            ),
          ),
          Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
        ],
      ),
    );

    Widget BSection = Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    '제발 이대로만',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
        ],
      ),
    );

    Widget CSection = Table(
      defaultColumnWidth: FixedColumnWidth(47.0),
      children: [
        TableRow( children: [
          Column(children:[Text(' ', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('월', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('화', style: TextStyle(fontSize: 20.0))]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('Flutter')]),
          Column(children:[Text('5*')]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('MySQL')]),
          Column(children:[Text('5*')]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('ReactJS')]),
          Column(children:[Text('5*')]),
        ]),
      ],
    );



    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              ASection,
              BSection,
              CSection,
            ],
          ),

        )
    );
  }
}



//
// class _TimeTableState extends State<TimeTable> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           margin: EdgeInsets.fromLTRB(28, 30, 27, 0),
//             child: Row(
//               children: [
//                 Text("2021년 1학기", style: TextStyle(fontWeight: FontWeight.bold),),
//                 RaisedButton(onPressed: () {}, child: Icon(Icons.play_arrow, size: (30)), shape: Border.all(width: 2.0, color: Colors.black),),
//                 RaisedButton(onPressed: () {}, child: Icon(Icons.play_arrow, size:30.0), shape: Border.all(width: 2.0, color: Colors.black), ),
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }
//
