import 'package:blood_donation/Home/component.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../../Other Components/appbar.dart';

class FindDonor extends StatefulWidget {
  const FindDonor({super.key});

  @override
  State<FindDonor> createState() => _FindDonorState();
}

class _FindDonorState extends State<FindDonor> {
  final _bloodController = SingleValueDropDownController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();
  final _locationController = TextEditingController();
  final _unitsController = TextEditingController();
  final CollectionReference _request =
      FirebaseFirestore.instance.collection("requests");

  @override
  Widget build(BuildContext context) {
    const List<DropDownValueModel> bloodGroup = [
      DropDownValueModel(name: "A+", value: 0),
      DropDownValueModel(name: "A-", value: 1),
      DropDownValueModel(name: "B+", value: 2),
      DropDownValueModel(name: "B-", value: 3),
      DropDownValueModel(name: "AB+", value: 4),
      DropDownValueModel(name: "AB-", value: 5),
      DropDownValueModel(name: "O+", value: 6),
      DropDownValueModel(name: "O-", value: 7),
    ];

    showDate() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025))
          .then((value) {
        _dateController.text = "${value!.day}/${value.month}/${value.year}";
      });
    }

    return Scaffold(
      appBar: tileAppBar("Request for blood", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const CText(
                title:
                    "( Kindly fill the details correctly to help you better )",
                color: Colors.black87,
              ),
              const SizedBox(height: 20),
              // Blood Group
              DropDownTextField(
                controller: _bloodController,
                dropDownIconProperty: IconProperty(color: pink),
                dropDownList: bloodGroup,
                textFieldDecoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Select Blood Group",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: pink),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Name
              CustomTextField(controller: _nameController, hintText: "Patient Name", icon: Icons.person),
              const SizedBox(height: 10),
              //Phone no.
              CustomTextField(controller: _phoneController, hintText: "Mobile Number", icon: Icons.phone_android, keyboardType: TextInputType.phone),
              const SizedBox(height: 10),
              // Date
              TextField(
                onTap: () => showDate(),
                controller: _dateController,
                cursorColor: pink,
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Required Date",
                  suffixIcon: const Icon(
                    Icons.date_range_rounded,
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
              ),
              const SizedBox(height: 10),
              // blood units
              CustomTextField(controller: _unitsController, hintText: "Select Units", icon: Icons.bloodtype, keyboardType: TextInputType.number),
              const SizedBox(height: 10),
              //Location
              CustomTextField(controller: _locationController, hintText: "Select Location", icon: Icons.location_pin),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final String blood = (_bloodController.dropDownValue) != null
                      ? _bloodController.dropDownValue!.name
                      : "A+";
                  final String name = _nameController.text;
                  final int? phone = int.tryParse(_phoneController.text);
                  final String date = _dateController.text;
                  final String location = _locationController.text;
                  final int? units = int.tryParse(_unitsController.text);
                  await _request.add({
                    "blood group": blood,
                    "name": name,
                    "phone number": phone,
                    "date": date,
                    "location": location,
                    "blood units": units,
                  });
                  _bloodController.dropDownValue = null;
                  _nameController.text = '';
                  _phoneController.text = '';
                  _dateController.text = '';
                  _locationController.text = '';
                  _unitsController.text = '';
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: pink,
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: const CText(
                  title: "Send Request",
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
