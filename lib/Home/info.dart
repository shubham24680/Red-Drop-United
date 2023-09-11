class RequestInfo {
  final String name;
  final String location;
  final String time;
  final String bloodType;

  RequestInfo({
    required this.name,
    required this.location,
    required this.time,
    required this.bloodType,
  });
}

List<RequestInfo> request = [
  RequestInfo(
    name: "Shubham Patel",
    location: "Hertford British Hospital",
    time: "15",
    bloodType: "assets/icons/blood-ab-n.svg",
  ),
  RequestInfo(
    name: "Sarthak Rana",
    location: "Sadar Hospital",
    time: "45",
    bloodType: "assets/icons/blood-o-n.svg",
  ),
  RequestInfo(
    name: "Siddarth Sharma",
    location: "PGI Hospital",
    time: "125",
    bloodType: "assets/icons/blood-a-p.svg",
  ),
];
