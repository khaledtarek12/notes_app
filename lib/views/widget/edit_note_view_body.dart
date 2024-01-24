import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widget/custom_app_bar.dart';
import 'package:notesapp/views/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? titel, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = titel ?? widget.noteModel.title;
              widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 50),
          CustomTextFiled(
            hint: widget.noteModel.title,
            maxLines: 1,
            onChanged: (value) {
              titel = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextFiled(
            hint: widget.noteModel.subTitle,
            maxLines: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
        ],
      ),
    );
  }
}
