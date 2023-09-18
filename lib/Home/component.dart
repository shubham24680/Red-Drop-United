import 'package:blood_donation/Home/info.dart';
import 'package:flutter/material.dart';

import '../button.dart';
import '../icons.dart';
import '../text.dart';

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

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.index});

  final int index;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CText(title: "Name"),
                  CText(
                    title: request[widget.index].name,
                    color: Colors.black,
                    size: 18,
                  ),
                  const SizedBox(height: 10),
                  const CText(title: "Location"),
                  CText(
                    title: request[widget.index].location,
                    color: Colors.black,
                    size: 18,
                  ),
                ],
              ),
              CText(title: "${request[widget.index].time} Min Ago", size: 14),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CIcons(
                title: request[widget.index].bloodType,
                size: 50,
              ),
              const CTextButton(title: "Donate"),
            ],
          ),
        ],
      ),
    );
  }
}
