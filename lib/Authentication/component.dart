import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const pink = Color(0xFFFB6376);

heading(title) {
  return Text(
    title,
    style: GoogleFonts.hind(fontSize: 20),
  );
}

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
                  color: Colors.grey[400],
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
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

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key, required this.title, required this.route});

  final String title;
  final String route;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, widget.route),
      style: ElevatedButton.styleFrom(
          backgroundColor: pink,
          minimumSize: const Size.fromHeight(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Text(
        widget.title,
        style: GoogleFonts.averageSans(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class BottomText extends StatefulWidget {
  const BottomText(
      {super.key,
      required this.text,
      required this.routeName,
      required this.title});

  final String text;
  final String routeName;
  final String title;

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.hind(fontWeight: FontWeight.bold),
        ),
        CustomTextButton(routeName: widget.routeName, title: widget.title)
      ],
    );
  }
}
