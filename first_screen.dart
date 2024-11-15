import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/button.dart';
import 'components/squaretile.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  //text editing controllers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  //sign in button method
  void signIn(){}
  //image path
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
            child:SingleChildScrollView(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const SizedBox(height: 50),
            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            //welcome back you've be missed!
            Text(
              "welcome back you've be missed!",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(height: 25),
            //username
            Textfield(
              controller: usernamecontroller,
              hinttext: "Username",
              obscure: false,
            ),
            const SizedBox(height: 10),
            //password
            Textfield(
              controller: passwordcontroller,
              hinttext: "Password",
              obscure: true,
            ),
            const SizedBox(height: 9),
            //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget password ?",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //sign in button
            Button(
              onTap: signIn,
            ),
            const SizedBox(height: 30),
            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Or continue with",
                    style: TextStyle(color:Colors.grey[700]),),
                  ),
                  Expanded(
                    child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ))
                ],
              ),
            ),
            const SizedBox(height: 25),
            //google and apple logo
              const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    //google asset
                    Squaretile(imagepath: "assets/images/googlelogo.png"),
                    //apple asset
                    Squaretile(imagepath: "assets/images/appleicon.png"),
                  ],
                ),
              ],
            ),
            //not a member? register now
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                Text("Register now",style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold),),
              ],
            ),
          ]),
    ))));
  }
}
