import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});

  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is empty';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
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
