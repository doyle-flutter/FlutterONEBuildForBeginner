import 'package:example/models/one_build_model/one_build_interface.dart';
import 'package:flutter/widgets.dart';
import 'dart:html' as html;

class OneBuildModel implements OneBuildModelInterface{
  @override
  String name = "JamesDev - WEB";

  @override
  Future<void> show(BuildContext context) async => html.window.alert(this.name);

}