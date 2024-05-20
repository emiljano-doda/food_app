import 'package:flutter/material.dart';
import 'package:food_app/components/my_buttons.dart';
import 'package:food_app/components/my_textfields.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Text Editing Controllers
  final TextEditingController emailController    = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, //background is depricated :(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_sharp,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary),

            //Gap
            const SizedBox(height: 25),

            //message, app slogan
            Text(
              "Uber Eats",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
                ),
            ),
            
            //Gap
            const SizedBox(height: 25),

            //email textfield
            MyTextfields(
              controller: emailController, 
              hintText: "Email", 
              obscureText: false),

            //Gap
            const SizedBox(height: 10),

            //password textfield
            MyTextfields(
              controller: passwordController, 
              hintText: "Password", 
              obscureText: true),

            //Gap
            const SizedBox(height: 10),

            //login button
            MyButtons(
              text: "Login",
              onTap: (){},
            ),

            //Gap
            const SizedBox(height: 10),

            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Not A Member ?! ", 
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register Here",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
                  ),
              ),
            ],)
          ],
          ),
      )
    );
  }
}