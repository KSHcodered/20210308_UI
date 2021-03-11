import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:fdottedline/fdottedline.dart';

class WritingPage extends StatefulWidget {
  @override
  _WritingPageState createState() => _WritingPageState();
}

class _WritingPageState extends State<WritingPage> {
  @override
  Widget build(BuildContext context) {
    var _isChecked = true;
    String inputs = '';
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                          style: TextStyle(fontSize: 20, color: Colors.white)),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  ButtonTheme(
                    height: 28,
                    minWidth: 46,
                    child: RaisedButton(
                      child: Text('전송',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      color: Colors.lightGreenAccent,
                      onPressed: () {},
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 34, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonTheme(
                    height: 20,
                    minWidth: 35,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      child: Text(
                        '자유게시끈',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      color: Colors.grey[400],
                      onPressed: () {},
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.red,
                            value: _isChecked,
                            onChanged: (value) {
                              setState(
                                () {
                                  _isChecked = value;
                                },
                              );
                            },
                          ),
                        ),
                        Text(
                          '익명의 끈으로 남기기',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        TextField(
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
                          width: MediaQuery.of(context).size.width,
                          strokeWidth: 1.5,
                          dottedLength: 8.0,
                          space: 4.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Column(
                          children: [
                            Flexible(
                              child: TextFormField(
                                maxLines: 60,
                                textInputAction: TextInputAction.newline,
                                autovalidateMode: AutovalidateMode.always,
                                decoration: const InputDecoration(
                                  hintText: '내용을 입력하세요',
                                  border: InputBorder.none,
                                ),
                                onSaved: (String value) {},
                                validator: (String value) {
                                  return value.contains('ㅗ') ? '욕은 나빠요~' : null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      FDottedLine(
                        color: Colors.grey,
                        width: MediaQuery.of(context).size.width,
                        strokeWidth: 1.5,
                        dottedLength: 8.0,
                        space: 4.0,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
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
                            height: 70,
                            alignment: Alignment.center,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
