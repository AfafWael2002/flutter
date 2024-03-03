import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class CustomScaffold extends StatelessWidget {

final Widget body;

final bool showBottomNavBar;

final int initialIndex;

const CustomScaffold({

super.key,

required this.body,

this.showBottomNavBar = false,

this.initialIndex = 1,

});

@override

Widget build(BuildContext context) {

return Scaffold(

body: body,

bottomNavigationBar:showBottomNavBar ? BottomNavBar(initialIndex: initialIndex): null,

// Scaffold
);
}

}