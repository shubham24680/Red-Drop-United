import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../button.dart';
import '../components.dart';
import '../icons.dart';
import '../text.dart';
import 'component.dart';
import 'info.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          pageView(controller),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: SlideEffect(
                activeDotColor: pink,
                dotColor: Colors.grey.shade300,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          const Tile(),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CText(
              title: "Donation Request",
              size: 22,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: request.length,
              itemBuilder: (context, index) => CustomCard(index: index),
            ),
          )
        ],
      ),
    );
  }
}
