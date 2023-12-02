import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Other Components/components.dart';
import '../Other Components/text.dart';
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
              Text(
                "You are just one step closer to us!",
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
                obscure: false,
              ),
              const SizedBox(height: 10),
              // Confirm Password Text Field ------------
              CustomTextField(
                controller: newPasswordController,
                hintText: "Confirm Password",
                icon: Icons.password,
                obscure: true,
              ),
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
                  title: "Register",
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(height: 105),
              // Login Invitation --------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member?",
                    style: GoogleFonts.hind(fontWeight: FontWeight.bold),
                  ),
                  const CustomTextButton(
                      routeName: 'login', title: "Log In")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
