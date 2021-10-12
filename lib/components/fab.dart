import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  final void Function() add;
  const FAB({Key? key, required this.add}) : super(key: key);

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: this.add,
    );
}
