import 'package:flutter/material.dart';

class AppBarJames extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) => AppBar(
    title: Text("ONE Build for Beginner 🍭"),
    centerTitle: true,
  );

  @override
  Size get preferredSize => Size(0, kToolbarHeight);
}
