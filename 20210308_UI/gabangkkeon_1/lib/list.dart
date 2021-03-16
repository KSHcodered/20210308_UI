import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NoticeBoard extends StatefulWidget {
  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  @override
  Widget build(BuildContext context) {
    Widget ASection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 21
                ),
                Container(
                  child: Text(
                    '자유게시끈',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Icon(
                  Icons.hourglass_full,
                  color: Colors.black,
                  size: 22,
                )
        ],
          ),
    );

    Widget BSection = Container(
      padding:  const EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          ButtonTheme(
            height: 20,
            minWidth: 51,
            child: RaisedButton(

              child: Text('최신순', style: TextStyle(fontSize: 9, color: Colors.white)),
              color: Colors.green, onPressed: () {  },
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           ),

          ButtonTheme(
            height: 20,
            minWidth: 51,
            child: RaisedButton(
              child: Text('공감순', style: TextStyle(fontSize: 9, color: Colors.black)),
              color: Colors.white, onPressed: () {  },
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );

    final  ReviewTitle = List<String>.generate(50, (i) => "Title $i");
    final  ReviewContent = List<String>.generate(50, (i) => "Content $i");
    
    Widget StateBox = Container(
      width: 150,
      padding:  const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('time', style: TextStyle(fontSize: 10, color: Colors.lightBlueAccent),),
          Icon(
            Icons.gamepad,
            color: Colors.greenAccent,
            size: 30,
          ),
          Icon(
            Icons.gamepad,
            color: Colors.greenAccent,
            size: 30,
          ),
        ],
      ),
    );

    Widget CSection = ListView.builder(
      itemCount: ReviewTitle.length,
      itemBuilder: (context, index) {
        return  Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey,
          ),

          margin: const EdgeInsets.fromLTRB(12, 6, 10, 6),
          padding: const EdgeInsets.fromLTRB(17, 20, 11, 8),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      ReviewTitle[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  StateBox,
                ],
              ),
              Text(
                ReviewContent[index],
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        );
      },
    );


    Widget d = Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
          colors: [Colors.transparent, Colors.white],
        ),
      ),
    );


    return SafeArea(
        child: Scaffold(
          body:
            Column(
                children: [
                  ASection,
                  BSection,
                  Flexible(
                    child: Stack(
                      children: [
                        CSection,
                        IgnorePointer(ignoring: true, child: d),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height/30,
                          left: MediaQuery.of(context).size.width/2+100,
                          child: RaisedButton(
                            onPressed: () {},
                            splashColor: Colors.red,
                            color: Colors.greenAccent,
                            child: Icon(Icons.people_outlined),
                            ),
                        ),
                      ]
                    ),
                  ),

                ],
              ),
          ),

    );
  }
}

