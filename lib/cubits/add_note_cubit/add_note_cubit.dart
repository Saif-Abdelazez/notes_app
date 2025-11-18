import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';
//!step number 2
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{ //! Step number 3
    emit(AddNoteLoading());
    try {
    // قبل ما اكتب السطر الجاي لازم اكون عملت  registerAdapter في ال main
      var noteBox = Hive.box<NoteModel>(kNotesBox);  //kNotesBox is identefied in constant.dart file 
    await noteBox.add(note);
    emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
