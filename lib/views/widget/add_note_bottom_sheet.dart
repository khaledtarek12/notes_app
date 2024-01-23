import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/custom_button.dart';
import 'package:notesapp/views/widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextFiled(
              hint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFiled(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 120,
            ),
            CustomButton(),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
