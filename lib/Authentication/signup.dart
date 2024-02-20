import 'package:flutter/material.dart';

import 'component.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final newPasswordController = TextEditingController();

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
              heading("You are just one step closer to us!"),
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
                hintText: "Create Password",
                icon: Icons.key,
                obscure: false,
              ),
              const SizedBox(height: 10),
              // Confirm Password Text Field ------------
              CustomTextField(
                controller: newPasswordController,
                hintText: "Re-type your Password",
                icon: Icons.password,
                obscure: true,
              ),
              const SizedBox(height: 20),
              // Sign In Button ------------
              const CustomElevatedButton(title: "Register", route: 'userInfo'),
              const SizedBox(height: 20),
              // Login Invitation --------------
              const BottomText(text: "Already a member?", routeName: 'login', title: "Log In"),
            ],
          ),
        ),
      ),
    );
  }
}
