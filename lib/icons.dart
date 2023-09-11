import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components.dart';

class CIcons extends StatelessWidget {
  const CIcons({super.key, required this.title, this.size});

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      title,
      color: pink,
      height: size ?? 35,
    );
  }
}
