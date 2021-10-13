import 'package:example/models/one_build_model/one_build_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class OneBuildController with ChangeNotifier{
  OneBuildModelInterface? _model;
  OneBuildController({required OneBuildModelInterface model}){
    this._model = model;
  }
  Future<void> show(BuildContext context) async => await this._model!.show(context);
}