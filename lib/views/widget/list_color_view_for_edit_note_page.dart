import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widget/colors_listview.dart';

class EditCircleListColorView extends StatefulWidget {
  const EditCircleListColorView({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditCircleListColorView> createState() =>
      _EditCircleListColorViewState();
}

class _EditCircleListColorViewState extends State<EditCircleListColorView> {
  late int currentColor;

  @override
  void initState() {
    currentColor = kColor.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentColor = index;
                widget.noteModel.color = kColor[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColor[index],
                isActive: currentColor == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
