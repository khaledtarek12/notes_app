import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(),
                )
              : const Text(
                  'Add',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
