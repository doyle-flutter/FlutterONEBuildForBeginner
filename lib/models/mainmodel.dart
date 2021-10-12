import 'dart:math';

class MainModel{
  int _value = 0;
  int get value => this._value;
  void set value(int newValue) => this._value = newValue;
  void add() => this.value += 1;
  void minus() => this.value -= 1;
}