import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Other Components/components.dart';
import '../Other Components/text.dart';
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
              Text(
                "Welcome back, you've been missed!",
                style: GoogleFonts.hind(fontSize: 20),
              ),
              const SizedBox(height: 10),
              // Email Text Field -----------
              CustomTextField(
                controller: emailController,
                hintText: "Email",
                icon: Icons.email,
                obscure: false,
              ),
              const SizedBox(height: 10),
              // Password Text Field ----------
              CustomTextField(
                controller: passwordController,
                hintText: "Password",
                icon: Icons.key,
                obscure: true,
              ),
              // Forgot Password Button --------------
              const CustomTextButton(
                  routeName: 'forgotPassword', title: "Forgot Password?"),
              const SizedBox(height: 20),
              // Sign In Button ------------
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'home'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: pink,
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: const CText(
                  title: "Sign In",
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(height: 130),
              // Signup Invitation --------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: GoogleFonts.hind(fontWeight: FontWeight.bold),
                  ),
                  const CustomTextButton(
                      routeName: 'signup', title: "Register Now")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
