import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: 'Title',
      hintStyle: const TextStyle(
          color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.bold),
      enabledBorder: buildBorder(),
      border: buildBorder(),
    ));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
