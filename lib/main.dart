import 'dart:io';

import 'package:example/controllers/maincontroller.dart';
import 'package:example/pages/main/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Sys());

class Sys extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider<MainController>(create: (BuildContext context) => MainController())
    ],
    child: PlatformBuild(),
  );
}

class PlatformBuild extends StatelessWidget {
  const PlatformBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => this._builder();

  Widget _builder(){
    if(kIsWeb || Platform.isAndroid || Platform.isWindows || Platform.isLinux || Platform.isFuchsia){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings route) => MaterialPageRoute(
          settings: RouteSettings(name: MainPage.path),
          builder: (BuildContext context) => MainPage()
        ),
      );
    }
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings route) => CupertinoPageRoute(
        settings: RouteSettings(name: MainPage.path),
        builder: (BuildContext context) => MainPage()
      ),
    );
  }
}

