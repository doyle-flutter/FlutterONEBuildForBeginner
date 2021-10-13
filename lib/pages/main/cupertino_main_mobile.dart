import 'package:example/components/appbarjames.dart';
import 'package:example/components/cupertino_appbar_james.dart';
import 'package:example/components/fab.dart';
import 'package:example/controllers/maincontroller.dart';
import 'package:example/controllers/one_build_controller.dart';
import 'package:flutter/cupertino.dart';

class CupertinoMainMobile extends StatelessWidget {
  final MainController controller;
  final OneBuildController oneBuildController;
  const CupertinoMainMobile({Key? key, required this.controller, required this.oneBuildController}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
    navigationBar: CupertinoAppBarJames(),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoButton(
            onPressed: () => this.controller.minus(),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(this.controller.value.toString()),
            )
          ),
          CupertinoButton(
            onPressed: () => this.oneBuildController.show(context),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("OneBuildButton"),
            )
          ),
          FAB(add: this.controller.add)
        ],
      ),
    )
  );
}
