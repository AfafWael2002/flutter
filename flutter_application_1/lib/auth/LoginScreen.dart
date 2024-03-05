// ignore: file_names
// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/Homescreen.dart';

// ignore: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginOneScreen({super.key});

  //const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login" ,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0 ,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print(value);
                  },
                  decoration: const InputDecoration(
                    //hintText: "Email Address",
                    labelText: "Email Address",
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(

                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    //hintText: "Email Address",
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(

                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  height: 50.0,
                  child: MaterialButton(onPressed: (){
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text , password: passwordController.text).
                    then((value) => {
                      Navigator.of(context).push(MaterialPageRoute( 
                        builder: (context) => const HomeScreen()
                      ))
                    });
                    print(emailController.text);
                    print(passwordController.text);
                  },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Don\'t have an Acount? "
                    ),
                    TextButton(onPressed: (){}  , child: Text(
                      "Register Now",
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}