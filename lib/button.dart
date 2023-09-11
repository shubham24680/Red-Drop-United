import 'package:blood_donation/text.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class CTextButton extends StatefulWidget {
  const CTextButton({super.key, required this.title});

  final String title;

  @override
  State<CTextButton> createState() => _CTextButtonState();
}

class _CTextButtonState extends State<CTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CText(title: widget.title, color: pink, size: 24),
    );
  }
}
