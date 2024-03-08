import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/LoginScreen.dart';
//import 'package:signup/login.dart';

class SignUp extends StatefulWidget {

  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    TextEditingController _nameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();


  //const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        FocusScopeNode currentFocus=FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus &&  currentFocus.focusedChild != null )
        currentFocus.focusedChild?.unfocus();

      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(onPressed: ()=> Navigator.of(context).pop(),icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            ),
          
          ),
      
        ),
        body:  SafeArea(
          child: SingleChildScrollView(
            child:Padding(padding: EdgeInsets.fromLTRB(20, 110, 20, 110),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Create Account",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
      
              ),
              SizedBox(height: 40),
              TextFields(icon: Icon(Icons.person_2_outlined) ,label: 'FULL NAME', controller: _nameController,),
              SizedBox(height: 10),
      
              TextFields(icon: Icon(Icons.email_outlined) , label: 'EMAIL', controller: _emailController, ),
              SizedBox(height: 10),
              TextFields(icon: Icon(Icons.lock_outlined) , label: 'PASSWORD', controller: _passwordController,secureText:true,),
              SizedBox(height: 10), 
              TextFields(icon: Icon(Icons.lock_outlined) , label: 'CONFIRM PASSWORD', controller: _confirmPasswordController,secureText:true,),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                      child : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('SIGN UP'),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward,size: 24.0,)
      
                        ]
      
                      ),
                      
                    ),
                  ),
                )
                ,
              
            ],
            ),
      
            
            )
           ),
        ),
      
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  fontFamily: 'SFUIDisplay', color:Colors.black,fontSize: 15
                ),
               
              ),
              TextButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginOneScreen()));
              },
               child: Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'SFUIDisplay',
                  color: Colors.green,
                  fontSize: 15
                ),
               ))
      
                  ],
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final Icon icon; 
  final String label;
  bool secureText;
  TextEditingController controller;
   TextFields({
    super.key, required this.icon, required this.label, required this.controller,this.secureText=false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextFormField(
        controller:controller,
        obscureText:secureText,

        style: TextStyle(
          color: Colors.black,fontFamily: 'SFUDisplay'
          ),
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label,
            prefixIcon:icon,
            labelStyle: TextStyle(fontSize: 12),
            ),
        ),
    );
  }
}