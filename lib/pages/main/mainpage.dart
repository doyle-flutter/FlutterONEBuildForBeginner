import 'dart:io';

import 'package:example/controllers/maincontroller.dart';
import 'package:example/controllers/one_build_controller.dart';
import 'package:example/pages/main/cupertino_main_mobile.dart';
import 'package:example/pages/main/mainmobile.dart';
import 'package:example/pages/main/mainweb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const String path = "/";

  @override
  Widget build(BuildContext context){
    MainController controller = Provider.of<MainController>(context);
    OneBuildController oneBuildController = Provider.of<OneBuildController>(context);
    return kIsWeb
      ? MainWeb(controller: controller, oneBuildController: oneBuildController)
      : Platform.isAndroid
        ? MainMobile(controller: controller, oneBuildController: oneBuildController)
        : CupertinoMainMobile(controller: controller, oneBuildController: oneBuildController);
  }
}
