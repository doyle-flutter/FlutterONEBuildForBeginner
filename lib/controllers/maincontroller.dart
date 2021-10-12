import 'package:example/models/model.dart';
import 'package:flutter/foundation.dart';

class MainController with ChangeNotifier{
  MyModel? _model;
  MainController({required model}){
    this._model = model;
  }

  int get value => this._model!.value;
  void add(){
    this._model!.add();
    this.notifyListeners();
  }
  void minus() {
    this._model!.minus();
    this.notifyListeners();
  }
}