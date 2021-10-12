import 'package:example/controllers/maincontroller.dart';
import 'package:example/pages/main/mainmobile.dart';
import 'package:example/pages/main/mainweb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const String path = "/";

  @override
  Widget build(BuildContext context){
    MainController controller = Provider.of<MainController>(context);
    return kIsWeb ? MainWeb(controller: controller) : MainMobile(controller: controller);
  }
}
