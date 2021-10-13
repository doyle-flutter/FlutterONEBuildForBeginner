import 'package:example/components/appbarjames.dart';
import 'package:example/components/fab.dart';
import 'package:example/controllers/maincontroller.dart';
import 'package:example/controllers/one_build_controller.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  final MainController controller;
  final OneBuildController oneBuildController;
  const MainMobile({Key? key, required this.controller, required this.oneBuildController}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBarJames(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => this.controller.minus(),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(this.controller.value.toString()),
              )
            ),
            InkWell(
              onTap: () => this.oneBuildController.show(context),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("OneBuildButton"),
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FAB(add: this.controller.add),
    );
}
