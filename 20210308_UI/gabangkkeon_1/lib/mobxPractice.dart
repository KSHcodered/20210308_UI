import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'TextWriting.dart';



part 'mobxPractice.g.dart';

class CounterStore = Counter with _$CounterStore;

abstract class Counter with Store{
  @observable
  int counter = 0;

  @observable
  int cc = 0;

  @observable
  bool check = false;

  @observable
  String inputs = '';

  @observable
  List<int> items =  [];

  @observable
  List<int> keys = [
    for (var i = 1; i < 300; i++) i
  ];

  @observable
  List<TextEditingController> controllers = [
    for (var i = 1; i < 300; i++) TextEditingController()
  ];

  @action
  void func1() {
    counter++;
    cc--;
  }

  @action
  void removeItem(int index) {
    items.removeAt(index);
    keys.removeAt(index);
    controllers[index].clear();
    controllers.removeAt(index);
  }

}





