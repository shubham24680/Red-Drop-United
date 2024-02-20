import 'package:flutter/material.dart';

import 'component.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              heading("Don't worry we got you covered."),
              const SizedBox(height: 10),
              // Email Text Field -----------
              CustomTextField(
                controller: emailController,
                hintText: "Enter your mail",
                icon: Icons.email,
                obscure: false,
              ),
              const SizedBox(height: 20),
              // Continue Button ------------
              const CustomElevatedButton(title: "Continue", route: 'login'),
            ],
          ),
        ),
      ),
    );
  }
}
