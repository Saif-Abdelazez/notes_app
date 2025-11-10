import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
          child: Column(
            children: [
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
