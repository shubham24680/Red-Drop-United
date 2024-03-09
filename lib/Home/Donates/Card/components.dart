import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

const pink = Color(0xFFFB6376);
const black = Colors.black38;

tileAppBar(title, context) {
  return AppBar(
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black87,
      ),
    ),
    title: CText(
      title: title,
      color: Colors.black87,
      size: 24,
    ),
    // actions: [
    //   IconButton(
    //     onPressed: () {},
    //     icon: SvgPicture.asset("assets/icons/filter.svg"),
    //   ),
    // ],
  );
}

final Map<String, String> blood = {
  "A+": "assets/icons/blood-a-p.svg",
  "A-": "assets/icons/blood-a-n.svg",
  "B+": "assets/icons/blood-b-p.svg",
  "B-": "assets/icons/blood-b-n.svg",
  "O+": "assets/icons/blood-o-p.svg",
  "O-": "assets/icons/blood-o-n.svg",
  "AB+": "assets/icons/blood-ab-p.svg",
  "AB-": "assets/icons/blood-ab-n.svg",
};

class CText extends StatelessWidget {
  const CText({super.key, required this.title, this.color, this.size});

  final String title;
  final Color? color;
  final double? size;
  // final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      // textAlign: align ?? TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: GoogleFonts.averageSans(
        color: color ?? black,
        fontWeight: FontWeight.bold,
        fontSize: size ?? 16,
      ),
    );
  }
}

class CIcons extends StatelessWidget {
  const CIcons({super.key, required this.title, this.size});

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      title,
      colorFilter: const ColorFilter.mode(pink, BlendMode.srcIn),
      height: size ?? 35,
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton(
      {super.key, required this.title, required this.route});

  final String title;
  final String route;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // onPressed: () => Navigator.pushNamed(context, widget.route),
      onPressed: () {},
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
