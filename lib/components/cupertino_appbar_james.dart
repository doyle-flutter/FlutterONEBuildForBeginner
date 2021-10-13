import 'package:flutter/cupertino.dart';

class CupertinoAppBarJames extends StatelessWidget implements ObstructingPreferredSizeWidget{

  @override
  Widget build(BuildContext context) => CupertinoNavigationBar(
    middle: Text("ONE Build for Beginner 🍭"),
  );

  @override
  Size get preferredSize => Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;

}

