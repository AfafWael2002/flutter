import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/Homescreen.dart';
import 'auth/bottom_nav_bar.dart';

void main() { //add this
    runApp(const MaterialApp(home:MyApp()) );

}
class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  
  Widget build(BuildContext context)
  {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(initialIndex:1,),
    );
  }

}
