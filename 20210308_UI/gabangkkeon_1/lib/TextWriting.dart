import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fdottedline/fdottedline.dart';

class WritingPage extends StatefulWidget {

  @override
  _WritingPageState createState() => _WritingPageState();
}

class _WritingPageState extends State<WritingPage> {
  FocusNode _focusNode;
  bool check = true;
  String inputs = '';
  int target= 0;

  List<int> items = [];
  List<TextEditingController> controllers = [
    for (var i = 1; i < 11; i++) TextEditingController()
  ];
  // List<int> keys = [1,2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> keys = [
    for (var i = 1; i < 200; i++) i
  ];

  Widget listViewItem({int index}) {
    // widget layout for listview items
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            height: 90,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.25,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              child: Text(
                'IMG #${keys[index]}',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
          ), //사진추가하는 공간
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.57,
            height: 90,
            margin: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Flexible(
                  child: TextField(
                    controller: controllers[index],
                    maxLines: 20,
                    textInputAction: TextInputAction.newline,
                    decoration: const InputDecoration(
                      hintText: '클릭하여 사진에 설명을 추가해보세요 ',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ), //설명추가하는 공간
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                    icon: Icon(Icons.close),
                    iconSize: 20,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    splashColor: Colors.black,
                    splashRadius: 20,
                    onPressed: () {
                      setState(() {
                        keys.removeAt(index);
                        items.removeAt(index);
                        controllers[index].clear();
                        controllers.removeAt(index);
                      });
                    }),
              ),
              Icon(
                Icons.gamepad,
                size: 20,
              ),
            ],
          ),
          //지우기버튼, 이동창
        ],
      ),
    );
  }

  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) controllers.clear();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(20, 34, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ButtonTheme(
                          height: 28,
                          minWidth: 46,
                          child: RaisedButton(
                            child: Text('닫기',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Center(
                          child: Text(
                            '글쓰기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        ButtonTheme(
                          height: 28,
                          minWidth: 46,
                          child: RaisedButton(
                            child: Text('전송',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            color: Colors.lightGreenAccent,
                            onPressed: () {},
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ), //Title
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(20, 34, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Chip(
                          label: Text('자유게시끈'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 24.0,
                                width: 24.0,
                                child: Checkbox(
                                  value: check,
                                  onChanged: (newValue) {
                                    setState(() {
                                      check = newValue;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                '익명의 끈으로 남기기',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ), //chip, checkbox
                ],
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children: [
                            TextField(
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              decoration: InputDecoration(
                                hintText: '제목을 입력하세요',
                                border: InputBorder.none,
                              ),
                              onChanged: (String str) {
                                setState(() => inputs = str);
                              },
                            ),
                            FDottedLine(
                              color: Colors.grey,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              strokeWidth: 1.5,
                              dottedLength: 8.0,
                              space: 4.0,
                            ),
                          ],
                        ),
                      ), /////////////Record Title + Dashed Line
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              child: TextFormField(
                                maxLines: 60,
                                autofocus: false,
                                textInputAction: TextInputAction.newline,
                                decoration: const InputDecoration(
                                  hintText: '내용을 입력하세요',
                                  border: InputBorder.none,
                                ),
                                onSaved: (String value) {}
                              ),
                            ),
                            FDottedLine(
                              color: Colors.grey,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              strokeWidth: 1.5,
                              dottedLength: 8.0,
                              space: 2.0,
                            ),
                          ],
                        ),
                      ), /////////////Record Content
                      Container(
                        height: min(95 * items.length.toDouble(), 300000),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          itemBuilder: (context, i) {
                            return listViewItem(index: i); // item layout
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: FDottedLine(
                            color: Colors.grey,
                            strokeWidth: 1.5,
                            dottedLength: 8.0,
                            space: 4.0,
                            corner: FDottedLineCorner.all(10.0),
                            child: Container(
                              color: Colors.grey[300],
                              width: 130,
                              height: 35,
                              alignment: Alignment.center,
                              child: FlatButton(
                                  child: Icon(Icons.add),
                                  splashColor: Colors.transparent,
                                  onPressed: () {
                                    setState(() {
                                      // add another item to the list
                                      if (items.length < 10)
                                        items.add(items.length);
                                      else
                                        items.length = 10;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}