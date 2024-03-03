import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/food.dart';
import 'package:flutter_application_1/auth/my_account.dart';
import 'package:flutter_application_1/auth/my_cart.dart';
import 'package:flutter_application_1/auth/Homescreen.dart';

//import 'package:flutter_application_1/main.dart';
/*void main() {
  runApp(const BottomNavBar());
}
*/
class BottomNavBar extends StatefulWidget {
  final int initialIndex;
  const   BottomNavBar({super.key, required this.initialIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex =0;

  void  initState(){
    super.initState();
    _selectedIndex = widget.initialIndex;


  }

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex =index;
    });

    switch(index){

      case 0 : _navigateToRoute(context,'/home', MyApp());break;
      case 1 : _navigateToRoute(context,'/food', Food());break;
      case 2 : _navigateToRoute(context,'/myaccount', myCart());break;
      case 3 : _navigateToRoute(context,'/mycart', myAccount());break;

      
    }
  }

  void _navigateToRoute(context, String routeName, Widget screen) {

final String? currentRouteName = ModalRoute.of(context)?.settings.name;
bool routeExists = currentRouteName == routeName;

if (routeExists){
  Navigator.popUntil(context,ModalRoute.withName(routeName) );
}
else{
  Navigator.pushReplacement(context, MaterialPageRoute(
    builder: (context)=> screen,
    settings: RouteSettings(name: routeName)
    ),
    );

  
}
}
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap : _onItemTapped,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon :Icon(
          Icons.home_outlined,
          color: _selectedIndex==0? Colors.green :Colors.black,
          ),
          label: 'Home', ),

            BottomNavigationBarItem(
        icon :Icon(
          Icons.food_bank_outlined,
          color: _selectedIndex==1? Colors.green :Colors.black,
          ),
          label: 'Food', ),
            BottomNavigationBarItem(
        icon :Icon(
          Icons.person_2_outlined,
          color: _selectedIndex==2? Colors.green :Colors.black,
          ),
          label: 'MyAccount', ),

            BottomNavigationBarItem(
        icon :Icon(
          Icons.shopping_cart_outlined,
          color: _selectedIndex==3? Colors.green :Colors.black,
          ),
          label: 'Cart', ),
          ],
    /*  title: 'Flutter SignUp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),*/
    );
  }
}
/*
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return 'Please type an email';
                  }
                  return null;
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                validator: (input) {
                  if (input == null || input.length < 6) {
                    return 'Your password needs to be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: signUp,
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signUp() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      // Handle signup logic here
      print('Email: $_email, Password: $_password');
    }
  }
}
*/