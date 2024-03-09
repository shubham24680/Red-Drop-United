import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key, required this.doc});

  final DocumentSnapshot doc;

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tileAppBar("Patient Details", context),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: CText(
                    title: widget.doc['name'],
                    color: Colors.black87,
                    size: 22,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CText(
                    title: widget.doc['location'],
                    size: 14,
                  ),
                ),
                const SizedBox(height: 20),
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
                // const SizedBox(height: 5),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: const Icon(Icons.message, color: pink, size: 30),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    flex: 3,
                    child: CustomElevatedButton(title: "Donate", route: ''),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
