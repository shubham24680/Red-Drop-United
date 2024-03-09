import 'package:cloud_firestore/cloud_firestore.dart';
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

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.doc});

  final DocumentSnapshot doc;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 20,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
              color: pink,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              SizedBox(
                child: CText(
                  title: widget.doc['name'],
                  color: Colors.black87,
                  size: 22,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 65,
                child: CText(
                  title: widget.doc['location'],
                  size: 14,
                ),
              ),
              const Expanded(child: SizedBox(height: 10)),
              CIcons(
                title: blood[widget.doc['blood group']]!,
                size: 30,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.calendar_month, size: 14, color: pink),
                  const SizedBox(width: 3),
                  CText(
                      title: widget.doc['date'],
                      size: 14,
                      color: Colors.black87),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Icon(Icons.location_on_rounded, size: 14, color: pink),
                  SizedBox(width: 3),
                  CText(title: "1500m away", size: 14, color: Colors.black87),
                ],
              ),
              const SizedBox(height: 5),
            ],
          )
        ],
      ),
    );
  }
}
