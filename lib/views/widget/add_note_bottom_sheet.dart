import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/views/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailuer) {
              print('failed  = ');
            }

            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(child: AddNoteForm()),
          )),
    );
  }
}
