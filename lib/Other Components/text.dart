import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components.dart';

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
