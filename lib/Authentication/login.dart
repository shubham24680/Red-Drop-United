import 'package:flutter/material.dart';

import 'component.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 100),
              // blood image ----------
              Image.asset("assets/images/blood.png", height: 200),
              const SizedBox(height: 50),
              // heading--------------
              heading("Welcome back, you've been missed!"),
              const SizedBox(height: 10),
              // Email Text Field -----------
              CustomTextField(
                controller: emailController,
                hintText: "Enter your mail",
                icon: Icons.email,
                obscure: false,
              ),
              const SizedBox(height: 10),
              // Password Text Field ----------
              CustomTextField(
                controller: passwordController,
                hintText: "Enter your Password",
                icon: Icons.key,
                obscure: true,
              ),
              // Forgot Password Button --------------
              const CustomTextButton(
                  routeName: 'forgotPassword', title: "Forgot Password?"),
              const SizedBox(height: 20),
              // Sign In Button ------------
              const CustomElevatedButton(title: "Log  In", route: 'home'),
              const SizedBox(height: 20),
              // Signup Invitation --------------
              const BottomText(
                  text: "Not a member?",
                  routeName: 'signup',
                  title: "Register Now"),
            ],
          ),
        ),
      ),
    );
  }
}
