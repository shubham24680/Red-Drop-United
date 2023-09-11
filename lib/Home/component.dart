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

List<List<String>> tile = [
  ["Find Donors", "assets/icons/donor.svg"],
  ["Donates", "assets/icons/request.svg"],
  ["Map", "assets/icons/map.svg"],
  ["News", "assets/icons/article.svg"],
  ["Feedback", "assets/icons/feedback.svg"],
  ["Report", "assets/icons/report.svg"],
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
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
      height: 300,
      child: GridView.builder(
        itemCount: tile.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CIcons(title: tile[index][1]),
                CText(title: tile[index][0]),
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
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: request.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                        title: request[index].name,
                        color: Colors.black,
                        size: 18,
                      ),
                      const SizedBox(height: 10),
                      const CText(title: "Location"),
                      CText(
                        title: request[index].location,
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  ),
                  CText(title: "${request[index].time} Min Ago", size: 14),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CIcons(
                    title: request[index].bloodType,
                    size: 50,
                  ),
                  const CTextButton(title: "Donate"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
