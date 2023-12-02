import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Home/info.dart';
import '../Other Components/button.dart';
import '../Other Components/components.dart';
import '../Other Components/icons.dart';
import '../Other Components/text.dart';

List<String> images = [
  "assets/images/donation (0).jpg",
  "assets/images/donation (1).jpg",
  "assets/images/donation (2).jpg",
  "assets/images/donation (3).jpg",
];

pageView(controller) {
  return SizedBox(
    height: 220,
    child: PageView.builder(
      controller: controller,
      itemCount: images.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(images[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

class CTile {
  final String name;
  final String icon;
  final String route;

  CTile({
    required this.name,
    required this.icon,
    required this.route,
  });
}

List<CTile> tile = [
  CTile(name: "Find Donors", icon: "assets/icons/donor.svg", route: 'donor'),
  CTile(name: "Donates", icon: "assets/icons/request.svg", route: 'donates'),
  CTile(name: "Map", icon: "assets/icons/map.svg", route: 'maps'),
  CTile(name: "News", icon: "assets/icons/article.svg", route: 'news'),
  CTile(name: "Feedback", icon: "assets/icons/feedback.svg", route: 'feedback'),
  CTile(name: "Report", icon: "assets/icons/report.svg", route: 'report'),
];

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      height: 290,
      child: GridView.builder(
        itemCount: tile.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.pushNamed(context, tile[index].route),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CIcons(title: tile[index].icon),
                CText(title: tile[index].name),
              ],
            ),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 1,
        ),
      ),
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CText(title: "Name"),
                  SizedBox(
                    child: CText(
                      title: widget.doc['name'],
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CText(title: "Location"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: CText(
                      title: widget.doc['location'],
                      color: Colors.black,
                      size: 18,
                    ),
                  )
                ],
              ),
              CIcons(
                title: blood[widget.doc['blood group']]!,
                size: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              CText(title: "15 Min Ago", size: 14),
              CTextButton(title: "Donate"),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.keyboardType,
      required this.hintText,
      required this.icon});

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hintText;
  final IconData icon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: pink,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        suffixIcon: Icon(
          widget.icon,
          color: pink,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
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
