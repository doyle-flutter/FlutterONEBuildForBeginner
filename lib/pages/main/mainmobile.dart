import 'package:example/components/appbarjames.dart';
import 'package:example/components/fab.dart';
import 'package:example/controllers/maincontroller.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  final MainController controller;
  const MainMobile({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBarJames(),
      body: Center(
        child: InkWell(
          onTap: () => this.controller.minus(),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(this.controller.value.toString()),
          )
        ),
      ),
      floatingActionButton: FAB(add: this.controller.add),
    );
}
