import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';
//!Notes cubit Step number 2

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  //!Notes cubit Step number 3
  List<NoteModel>? notes;
  fetchAllNotes() {
    // قبل ما اكتب السطر الجاي لازم اكون عملت  registerAdapter في ال main
    var noteBox = Hive.box<NoteModel>(
        kNotesBox); //kNotesBox is identefied in constant.dart file
    notes = noteBox.values.toList(); // get th list from cubit
  }
}
