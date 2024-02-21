// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("Sign In", style: Theme.of(context).textTheme.displayLarge),
        centerTitle: true,
        backgroundColor: Appcolor.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome back",
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Sign in with your email and password or\n continue with social media",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              width: 2, color: Appcolor.purple), //<-- SEE HERE
                        ),
                        labelText: "Email",
                        hintText: "Enter your Email",
                        suffixIcon: const Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ),
                  TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          width: 2, color: Appcolor.purple), //<-- SEE HERE
                    ),
                    labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: const Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
              Row(
                children: [
                  
                ],
              )
                ],
              ),
            ),
          
            
          ],
        ),
      ),
    );
  }
}
