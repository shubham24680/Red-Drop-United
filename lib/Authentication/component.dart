import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Other Components/components.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    required this.icon,
    required this.obscure,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hintText;
  final IconData icon;
  final bool obscure;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool toogle = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: pink,
      obscureText: widget.obscure && toogle,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon, color: pink),
        hintText: widget.hintText,
        suffixIcon: (widget.obscure)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    toogle = !toogle;
                  });
                },
                child: Icon(
                  toogle ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black45),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: pink),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
    required this.routeName,
    required this.title,
  });

  final String routeName;
  final String title;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, widget.routeName),
        style: TextButton.styleFrom(foregroundColor: Colors.white),
        child: Text(
          widget.title,
          style: GoogleFonts.hind(
            color: pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
