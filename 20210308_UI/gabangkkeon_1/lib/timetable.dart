import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  '2021년 1학기',
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '제발 이대로만가즈아',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Row(
            children: [
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
        ],
      ),
    );

    Widget CSection = Stack(
      children: [
        Container(
          height: 1200,
          margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        ),
        Container(
          // height: MediaQuery.of(context).size.height * 0.65,
          height: 40,
          margin: EdgeInsets.fromLTRB(20, 0, 28, 0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '토',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '월',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '화',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '수',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '목',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 56) / 6,
                  child: Text(
                    '금',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.brown[200],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
        Container(
          // height: MediaQuery.of(context).size.height * 0.65,
          height: 600,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(28, 0, 0, 0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '10',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '11',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '12',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 38,
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    '10',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
          height: 600 / 15 * 2,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + (MediaQuery.of(context).size.width - 56) / 6,
              40,
              (MediaQuery.of(context).size.width - 56) / 6 * 4 + 28,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '창의설계(3)',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '김대은',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.greenAccent,
          ),
          height: 600 / 15 * 2,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 3,
              40,
              0,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '연구논문',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '김우철',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
          height: 600 / 15 * 2,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 5,
              40,
              0,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '창의설계(3)',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '김대은',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blueGrey,
          ),
          height: 600 / 15 * 2,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 2,
              40.0 * 3,
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 3,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '메키트로닉스',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '양현석',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blueGrey,
          ),
          height: 600 / 15 * 2,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 4,
              40.0 * 3,
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 1,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '연구논문',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '김우철',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
          ),
          height: 600 / 15,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6),
              40.0 * 6,
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 4,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '연구논문',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '김우철',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.lightGreen,
          ),
          height: 600 / 15,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 3,
              40.0 * 8,
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 2,
              0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.pinkAccent,
          ),
          height: 600 / 15,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 3,
              40.0 * 10,
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 2,
              0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.pinkAccent,
          ),
          height: 600 / 15,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 4,
              40.0 * 9,
              28 + ((MediaQuery.of(context).size.width - 56) / 6),
              0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.pinkAccent,
          ),
          height: 600 / 15,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 5,
              40.0 * 8,
              0,
              0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.brown[500],
          ),
          height: 600 / 15 * 4,
          width: (MediaQuery.of(context).size.width - 56) / 6,
          margin: EdgeInsets.fromLTRB(
              28 + ((MediaQuery.of(context).size.width - 56) / 6) * 5,
              40.0 * 9,
              0,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '기계공학세미나(2)',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  '박진영',
                  style: TextStyle(fontSize: 8),
                ),
              ]),
        ),
      ],
    );

    Widget DSection = Container(
      //height: MediaQuery.of(context).size.height*0.117,
      height: 100,
      // width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        border: Border.all(color: Colors.black),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(5.0, 5.0),
          ),
        ],
      ),
    );

    final BottomIcon = [
      IconButton(icon: Icon(Icons.home_outlined), onPressed: null),
      IconButton(icon: Icon(Icons.calendar_view_day), onPressed: null),
      IconButton(icon: Icon(Icons.dashboard_sharp), onPressed: null),
      IconButton(icon: Icon(Icons.ballot_outlined), onPressed: null),
      IconButton(icon: Icon(Icons.people_outline), onPressed: null),
    ];
    final BottomTitle = ['홈', '시간표', '게시판', '멘토링', 'MY'];

    Column _buildButtonColumn(IconButton icon, String label) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: icon,
            color: Colors.black,
            onPressed: null,
            iconSize: 50,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < 5; i++)
            _buildButtonColumn(BottomIcon[i], BottomTitle[i])
        ],
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ASection,
            BSection,
            Flexible(child: SingleChildScrollView(child: CSection)),
          ],
        ),
      ),
    );
  }
}
