import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/custom_app_bar.dart';
import 'package:notesapp/views/widget/custom_list_view.dart';

class NotesViewBodey extends StatelessWidget {
  const NotesViewBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
