import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer =SimpleBlocObserver(); // after creating SimpleBlocObserver
  Hive.registerAdapter(NoteModelAdapter()); //! بعرف هايف ااني هخزن فيها note model
  await Hive.openBox<NoteModel>(kNotesBox); // 👈 فتح البوكس صح
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: kPrimaryColor, fontFamily: 'Poppins'),
        home: const NotesView());
  }
}
