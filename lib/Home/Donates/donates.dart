import 'package:blood_donation/Home/component.dart';
import 'package:blood_donation/Other%20Components/components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../Other Components/appbar.dart';

class Donates extends StatefulWidget {
  const Donates({super.key});

  @override
  State<Donates> createState() => _DonatesState();
}

class _DonatesState extends State<Donates> {
  final CollectionReference _request =
      FirebaseFirestore.instance.collection('requests');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tileAppBar("Donates", context),
      body: StreamBuilder(
        stream: _request.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: ((context, index) {
                final DocumentSnapshot doc = snapshot.data!.docs[index];
                return CustomCard(doc: doc);
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
    );
  }
}
// class Donates extends StatelessWidget {
//   const Donates({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: tileAppBar("Donates", context),
//       body: SizedBox(
//         height: 220.0 * request.length,
//         child: ListView.builder(
//           itemCount: request.length,
//           itemBuilder: (context, index) => CustomCard(index: index),
//         ),
//       ),
//     );
//   }
// }
