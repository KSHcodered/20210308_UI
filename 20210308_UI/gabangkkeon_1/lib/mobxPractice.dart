import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'mobxPractice.g.dart';

class CounterStore = Counter with _$CounterStore;

abstract class Counter with Store{
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

}





