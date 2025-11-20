import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // in case of success
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print('Failed ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            //* pervent the user from make any action while loading
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                bottom: MediaQuery.of(context).viewInsets.bottom, //* give me the hight of the keyboard 
              ),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
