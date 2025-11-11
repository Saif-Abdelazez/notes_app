import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        CustomAppBar(title: 'Edit Note',icon: Icons.check,),
        SizedBox(
          height: 30,
        ),
        CustomTextField(hint: 'Title'),
        SizedBox(
          height: 15,
        ),
        CustomTextField(hint: 'Content', maxLines: 5),
      ]),
    );
  }
}
