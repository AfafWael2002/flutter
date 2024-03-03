import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/custom_scaffold.dart';


// ignore: camel_case_types
class myAccount extends StatelessWidget{

  const myAccount({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const CustomScaffold(

body: SingleChildScrollView(),

showBottomNavBar: true,

initialIndex: 3,);

  }
}