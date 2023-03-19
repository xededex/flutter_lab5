import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.title,
      this.firstname,
      this.lastname,
      this.aboutText,
      this.gender,
      this.policy,
      this.isSwiched,
      this.lang});

  final String title;

  final String? firstname;
  final String? lastname;
  final String? aboutText;
  final int? gender;
  final bool? policy;
  final bool? isSwiched;
  final String? lang;

  String getText() {
    String text;
    text = "First name: $firstname \n" +
        "Last name: $lastname \n" +
        "Gender: ${gender == 0 ? "Female" : "Male"} \n" +
        "Language: $lang \n" +
        "Switch: ${isSwiched == true ? "On" : "Off"} \n" +
        "About yourself: $aboutText \n" +
        "Agreed with something?: ${policy == true ? "Yes" : "No"}";
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Text(getText()),
          ),
        ));
  }
}