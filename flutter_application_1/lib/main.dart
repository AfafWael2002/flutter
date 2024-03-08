import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/Signup.dart';
import 'package:flutter_application_1/auth/bottom_nav_bar.dart';

void main()  { //add this

    WidgetsFlutterBinding.ensureInitialized();
     // Firebase.initializeApp();
    runApp(  MaterialApp(home:SignUp()) );

}
class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  
  Widget build(BuildContext context)
  {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(initialIndex:0,),
    );
  }

}
/*
       showBottomNavBar: true,

initialIndex: 0,
*/