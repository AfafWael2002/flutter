// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/custom_scaffold.dart';


class Food extends StatelessWidget{

  const Food({super.key});

  @override
 
   Widget build(BuildContext context)
  {
    return const CustomScaffold(

body: SingleChildScrollView(),

showBottomNavBar: true,

initialIndex: 1,);
  }
}