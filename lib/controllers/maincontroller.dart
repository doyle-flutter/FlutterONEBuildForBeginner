import 'package:example/models/mainmodel.dart';
import 'package:flutter/foundation.dart';

class MainController with ChangeNotifier{
  MainModel _model = MainModel();
  int get value => this._model.value;
  void add(){
    this._model.add();
    this.notifyListeners();
  }
  void minus() {
    this._model.minus();
    this.notifyListeners();
  }
}