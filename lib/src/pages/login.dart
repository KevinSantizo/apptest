import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff57C2FF),
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Email', style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration:  InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        hintText: 'email@email.com',
                      )
                    ),
                    SizedBox(height: 30.0,),
                    Text('Password', style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration:  InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        hintText: 'password here',
                        suffixIcon: Icon(Icons.remove_red_eye)
                      )
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: checkBox, 
                              onChanged: (value) {
                                setState(() {
                                  checkBox = value;
                                });
                              }
                            ),
                            Text('Remember me')
                          ],
                        ),
                        Text('Forgot password?', style: TextStyle(
                          color: Color(0xff64C7FF),
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(17.0)
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff132144)
                        )
                      ),
                      onPressed: (){}, 
                      child: Text('Login', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    SizedBox(height: 15.0,),
                    Text('or sign with', textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(17.0)
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Colors.grey
                          )
                        )
                      ),
                      onPressed: (){}, 
                      child: Text('Sign with google', style: TextStyle(
                        color: Color(0xff132144),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ), )
                    ),
                    SizedBox(height: 10.0,),
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(17.0)
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Colors.grey
                          )
                        )
                      ),
                      onPressed: (){}, 
                      child: Text('Sign with facebook', style: TextStyle(
                        color: Color(0xff132144),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold 
                      ), )
                    )
                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}