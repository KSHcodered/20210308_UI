// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobxPractice.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on Counter, Store {
  final _$counterAtom = Atom(name: 'Counter.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$ccAtom = Atom(name: 'Counter.cc');

  @override
  int get cc {
    _$ccAtom.reportRead();
    return super.cc;
  }

  @override
  set cc(int value) {
    _$ccAtom.reportWrite(value, super.cc, () {
      super.cc = value;
    });
  }

  final _$checkAtom = Atom(name: 'Counter.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$inputsAtom = Atom(name: 'Counter.inputs');

  @override
  String get inputs {
    _$inputsAtom.reportRead();
    return super.inputs;
  }

  @override
  set inputs(String value) {
    _$inputsAtom.reportWrite(value, super.inputs, () {
      super.inputs = value;
    });
  }

  final _$itemsAtom = Atom(name: 'Counter.items');

  @override
  List<int> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<int> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$keysAtom = Atom(name: 'Counter.keys');

  @override
  List<int> get keys {
    _$keysAtom.reportRead();
    return super.keys;
  }

  @override
  set keys(List<int> value) {
    _$keysAtom.reportWrite(value, super.keys, () {
      super.keys = value;
    });
  }

  final _$controllersAtom = Atom(name: 'Counter.controllers');

  @override
  List<TextEditingController> get controllers {
    _$controllersAtom.reportRead();
    return super.controllers;
  }

  @override
  set controllers(List<TextEditingController> value) {
    _$controllersAtom.reportWrite(value, super.controllers, () {
      super.controllers = value;
    });
  }

  final _$CounterActionController = ActionController(name: 'Counter');

  @override
  void func1() {
    final _$actionInfo =
        _$CounterActionController.startAction(name: 'Counter.func1');
    try {
      return super.func1();
    } finally {
      _$CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(int index) {
    final _$actionInfo =
        _$CounterActionController.startAction(name: 'Counter.removeItem');
    try {
      return super.removeItem(index);
    } finally {
      _$CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
cc: ${cc},
check: ${check},
inputs: ${inputs},
items: ${items},
keys: ${keys},
controllers: ${controllers}
    ''';
  }
}
