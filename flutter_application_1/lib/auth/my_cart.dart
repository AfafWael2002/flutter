import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/custom_scaffold.dart';


class myCart extends StatelessWidget{

  const myCart({super.key});

  @override
  Widget build(BuildContext context)
  {
     return const CustomScaffold(

body: SingleChildScrollView(),

showBottomNavBar: true,

initialIndex: 2,);
  }
}