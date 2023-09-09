import 'package:blood_donation/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: controller,
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/donation ($index).jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 4,
          effect: SlideEffect(
            activeDotColor: pink,
            dotColor: Colors.grey.shade300,
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          height: 300,
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                  "assets/images/blood-ab-n-svgrepo-com.svg"),
                              const Text("Donation"),
                            ],
                          ),
                        ),
                    childCount: 6),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
