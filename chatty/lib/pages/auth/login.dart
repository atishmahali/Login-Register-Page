import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            //hello text
            children: [
              Text("Hello Again",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              SizedBox(height: 10,),
              Text("Welcome back, Signin to see what's rolling",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              SizedBox(height: 10,),
          //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',

                      ),
                    ),

                  ),
                ),
              ),
          //password text field
              SizedBox(height: 10,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
            decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              obscureText: true,
            decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'PassWord',

            ),
            ),

                //not a member
         ),
            ),
            ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurpleAccent
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Register Now',
                    style: TextStyle(
                      color: Colors.blue,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
          ],


          ),
        ),
      )
    );
  }
}
