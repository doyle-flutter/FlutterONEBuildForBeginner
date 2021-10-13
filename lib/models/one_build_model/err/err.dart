import 'package:example/models/one_build_model/one_build_interface.dart';
import 'package:flutter/widgets.dart';

class OneBuildModel implements OneBuildModelInterface{
  @override
  String name = "JamesDev - Error";

  @override
  Future<void> show(BuildContext context) async => throw "err";
}