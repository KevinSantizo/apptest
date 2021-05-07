import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff57C2FF),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Text('Login', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 35.0, 
                    fontWeight: FontWeight.bold  
                    ),
                  ),

                Text('Welcome to your account',
                  style: TextStyle(
                    color: Colors.white,  
                    fontSize: 20.0 
                  ) 
                ),
              ],
            ),
          ),



            /*










            */


        ],
      ),
    );
  }
}