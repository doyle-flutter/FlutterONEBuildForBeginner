import 'dart:io';

import 'package:example/models/one_build_model/one_build_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OneBuildModel implements OneBuildModelInterface{
  @override
  String name = "JamesDev - Mobile";

  @override
  Future<void> show(BuildContext context) async {
    final String _version = Platform.version;
    if(Platform.isMacOS || Platform.isIOS){
      return await showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text("Version : $_version"),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Close"),
            )
          ]
        )
      );
    }
    return await showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text("Version : $_version"),
      )
    );
    return;
  }

}