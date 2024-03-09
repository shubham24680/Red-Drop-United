import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Donates/Card/details.dart';
import 'component.dart';

// import 'info.dart';
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final CollectionReference _request =
      FirebaseFirestore.instance.collection('requests');

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          pageView(controller),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: images.length,
              effect: SlideEffect(
                activeDotColor: pink,
                dotColor: Colors.grey.shade400,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          const Tile(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                CText(
                  title: "Donation request",
                  size: 22,
                  color: Colors.black87,
                ),
                CTextButton(title: "See all")
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 190,
            child: StreamBuilder(
                stream: _request.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return PageView.builder(
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        final DocumentSnapshot doc = snapshot.data!.docs[index];
                        return InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      PatientDetails(doc: doc)))),
                          child: CustomCard(doc: doc),
                        );
                      }),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(
                      color: pink,
                    ),
                  );
                },
              ),
          ),
          // SizedBox(
          //   height: 200,
          //   child: PageView.builder(
          //     itemCount: request.length,
          //     itemBuilder: (context, index) => CustomCard(index: index),
          //   ),
          // )
        ],
      ),
    );
  }
}
