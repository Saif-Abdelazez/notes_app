import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =
      GlobalKey(); //*used for validates in form
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, //*use the key in form
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              //receive the title from user
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              //receive the content from user
              content = value;
            },
          ),
          const SizedBox(
            height: 80,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      DateTime currentDate = DateTime.now();
                      String formattedCurrentDate =
                          DateFormat('dd-MM-yyyy').format(currentDate);
                      //!add note cubit Step number 6
                      NoteModel noteModel = NoteModel(
                        title: title!,
                        content: content!,
                        date: formattedCurrentDate,//*DateTime.now().toString().substring(0, 10),
                        color: Colors.blue.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode
                          .always; //! if data was null we always validate for the value
                      setState(() {}); //for update the screen
                    } //*used after add onTap in custom button
                  });
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
